// Devin Wingfield
// 1002098917

/* Copyright (c) 2025 Trevor Bakker
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by


 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILTY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/license/>.
 */

#define _DEFAULT_SOURCE

#include <assert.h>
#include <errno.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h> 
#include <sys/types.h>

/*** Constants that define parameters of the simulation ***/

#define MAX_RUNWAY_CAPACITY                                                    \
  2 /* Number of aircraft that can use runway simultaneously */
#define CONTROLLER_LIMIT                                                       \
  8 /* Number of aircraft the controller can manage before break */
#define MAX_AIRCRAFT 1000 /* Maximum number of aircraft in the simulation */
#define FUEL_MIN 20       /* Minimum fuel reserve in seconds */
#define FUEL_MAX 60       /* Maximum fuel reserve in seconds */
#define EMERGENCY_TIMEOUT 30 /* Max wait time for emergency aircraft in seconds */
#define DIRECTION_SWITCH_TIME 5 /* Time required to switch runway direction */
#define DIRECTION_LIMIT 4       /* Max consecutive aircraft in same direction */

#define COMMERCIAL 0
#define CARGO 1
#define EMERGENCY 2

#define NORTH 0
#define SOUTH 1

typedef struct {
  int arrival_time; // time between the arrival of this aircraft and the
                    // previous aircraft
  int runway_time;  // time the aircraft needs to spend on the runway
  int aircraft_id;
  int aircraft_type; // COMMERCIAL, CARGO, or EMERGENCY
  int fuel_reserve;  // Randomly assigned fuel reserve (FUEL_MIN to FUEL_MAX
                     // seconds)
  time_t arrival_timestamp; // timestamp when aircraft thread was created

  // added
  int use_runway;           // controller telling aircraft to use runway
  time_t updated_timestamp; // timestamp when fuel reserve was set or updated

} aircraft_info;

/* My variables */

// emergency declared min fuel
static int max_runway_time;

// keep track of aircrafy types
// 0 = comm | 1 = cargo | 2 = emergency
static int air_num[3];

// avg fuel reserves
// 0 = comm | 1 = cargo
// no need to avg emergency
static int avg_fr[3];

// arrays of aircraft type instances
// 0 = comm | 1 = cargo | 2 = emergency
static aircraft_info *air_arr[3][MAX_AIRCRAFT];

// mutexes
static pthread_mutex_t controller_lock;
static pthread_mutex_t counter_lock;
static pthread_mutex_t air_arr_lock;

// conditional vars
static pthread_cond_t air_arr_cond;

// semaphores
static sem_t *runway;
static sem_t *air_since_break;

/* basic information about simulation.  they are printed/checked at the end
 * and in assert statements during execution.
 *
 * you are responsible for maintaining the integrity of these variables in the
 * code that you develop.
 */

static int aircraft_on_runway = 0; /* Total number of aircraft currently on runway */
static int commercial_on_runway = 0; /* Total number of commercial aircraft on runway */
static int cargo_on_runway = 0; /* Total number of cargo aircraft on runway */
static int emergency_on_runway = 0; /* Total number of emergency aircraft on runway */
static int aircraft_since_break = 0; /* Aircraft processed since last controller break */
static int current_direction = NORTH; /* Current runway direction (NORTH or SOUTH) */
static int consecutive_direction = 0; /* Consecutive aircraft in current direction */

// DESC: removes aircraft inst from specified array
// PARAMS: 
//    num_of_arr: idx of aircraft type air
//    ai_id:      airvraft_id
// RETURN:
//    Implicit: Array defined by num_of_arr without the specified aircraft
//              isntance 
static void remove_inst(int num_of_arr, int ai_id) {
  aircraft_info *tmp[MAX_AIRCRAFT];
  int ptr = 0;

  // go through og arr, skip leaving inst
  for (int i = 0; air_arr[num_of_arr][i] != NULL; i++) {
    if (air_arr[num_of_arr][i]->aircraft_id != ai_id) {
      tmp[ptr++] = air_arr[num_of_arr][i];
    } 
  }

  for (int i = 0; air_arr[num_of_arr][i] != NULL; i++) {
    air_arr[num_of_arr][i] = tmp[i];
  }

  air_arr[num_of_arr][ptr] = NULL;
}

// DESC: get total amount of aircraft in queue
// PARAMS:
//    None
// RETURN:
//    INT: count of aircraft in air_arr
static int check_aircraft_num() {
  int total = 0;
  for (int i = 0; i < 3; i++) {
    total += air_num[i];
  }

  return total;
}

// DESC: set specified aircraft instance as an emergency
// PARAMS:
//      num_of_arr: idx of aircraft type air
//      ai_id:      airvraft_id
// RETURN:
//      Implicit: updated emergency with new aircraft
//                + removed aircraft from commercial or cargo
static void declare_emergency(int num_of_arr, int air_id) {
  // air_arr[EMERGENCY] is arr of emergency aircraft
  // air_num[EMERGENCY] is num of emergency aircraft
  
  for (int i = 0; air_arr[EMERGENCY][i] != NULL; i++) {
    // if a already emergency or already using runway
    if (air_arr[EMERGENCY][i]->aircraft_id == air_id) {
      // already emergency
      return;
    }
  }

  pthread_mutex_lock(&counter_lock);
  printf("FUEL EMERGENCY - Aircraft %d has declared an emergency!\n", air_id);
  for (int i = 0; air_arr[num_of_arr][i] != NULL; i++) {
    if (air_arr[num_of_arr][i]->aircraft_id == air_id) {
      // change to emergency type
      air_arr[num_of_arr][i]->aircraft_type = EMERGENCY;

      // add to emergency array
      air_arr[EMERGENCY][air_num[EMERGENCY]++] = air_arr[num_of_arr][i];

      // update counters 
      air_num[num_of_arr]--;
      break;
    }
  }
  remove_inst(num_of_arr, air_id);
  pthread_mutex_unlock(&counter_lock);
}

// DESC: Update avg_arr for prioritization
// PARAMS: 
//      NONE
// RETURN:
//      Implicit: updated averages for each aircraft type array
static void update_avg_arrs() {
  int sum;

  for (int i = 0; i<3; i++){
    sum = 0;
    for (int j = 0; j<air_num[i]; j++){
      if (air_arr[i][j] != NULL) {
        sum += air_arr[i][j]->fuel_reserve;
      }
    }
    // avoid division by zero
    avg_fr[i] = air_num[i] != 0 ? sum / air_num[i] : 0;
  }

}

// DESC:    Updates fuel reserves of each aircraft in air_arr
//          by subtracting current time by time it was last updated (or set)
// PARAMS:
//          num_of_arr: idx of aircraft type array in air_arr to update
// RETURN:
//          Implicit: updated fuel reserves of aircraft array specified by
//                    num_of_arr
static void update_fuel_reserves(int num_of_arr) {
  time_t curr_time = time(NULL);
  
  // update fuel reserves
  for (int i = 0; air_arr[num_of_arr][i] != NULL; i++) {
    // curr_FR - (curr_time - updated_time)
    air_arr[num_of_arr][i]->fuel_reserve -=
        air_arr[num_of_arr][i]->updated_timestamp 
            ? (int)difftime(curr_time, air_arr[num_of_arr][i]->updated_timestamp)
            : (int)difftime(curr_time, air_arr[num_of_arr][i]->arrival_timestamp);

    // update time since fuel reserve last updated
    air_arr[num_of_arr][i]->updated_timestamp = curr_time;

    // make emergency if max_runway_time seconds, or less, left of fuel and not already using runway
    if (air_arr[num_of_arr][i]->fuel_reserve <= (int)(max_runway_time / 2) && air_arr[num_of_arr][i]->use_runway == 0) {
      declare_emergency(num_of_arr, air_arr[num_of_arr][i]->aircraft_id);
    }
  }

  // update new averages
  update_avg_arrs();
}

// DESC:      Merge sort of aircraft isntances in ascending order 
//            of fuel reserves
// PARAMS:
//            air_info: array of similar aircraft instances 
//            left: left pointer
//            mid: middle pointer
//            right: right pointer
// RETURN:
//            Implicit: sorted array in ascending order based on 
//                      fuel reserves
static void merge(aircraft_info **air_info, int left, int mid, int right) {
  int l_ptr = 0, r_ptr = 0, ptr = left;              // pointers
  int l_size = mid - left + 1, r_size = right - mid; // get sizes of arrays
  aircraft_info *L[l_size], *R[r_size];              // tmp arrays

  // fill tmp arrays
  for (int i = 0; i < l_size; i++) {
    L[i] = air_info[left + i];
  }

  for (int j = 0; j < r_size; j++) {
    R[j] = air_info[mid + j + 1];
  }

  // merge arrays in ascending order
  while ((l_ptr < l_size) && (r_ptr < r_size)) {
    if (L[l_ptr]->fuel_reserve <= R[r_ptr]->fuel_reserve) {
      air_info[ptr] = L[l_ptr];
      l_ptr++;
    } else {
      air_info[ptr] = R[r_ptr];
      r_ptr++;
    }
    ptr++;
  }

  // merge remaining values if not empty
  while (l_ptr < l_size) {
    air_info[ptr++] = L[l_ptr++];
  }

  while (r_ptr < r_size) {
    air_info[ptr++] = R[r_ptr++];
  }
}

// DESC:    prioritization of aircraft based on least fuel reserve
// PARAMS:  
//          aircraft: array of similar aircraft instances 
//          left: left pointer
//          right: right pointer
// RETURN:
//          Implicit: prioritized array of similar aircraft instances
static void sort_flights_fuel(aircraft_info **aircraft, int left, int right) {
  if (left >= right) {
    return;
  }

  int mid = left + (right - left) / 2;

  sort_flights_fuel(aircraft, left, mid);
  sort_flights_fuel(aircraft, mid + 1, right);

  merge(aircraft, left, mid, right);
}

// DESC: destroy and unlink semaphores and mutexes
// PARAMS & RETURN : None
static void destroy_mutexes() {
  pthread_mutex_destroy(&controller_lock);
  pthread_mutex_destroy(&counter_lock);
  pthread_mutex_destroy(&air_arr_lock);
  pthread_mutex_destroy(&air_arr_lock);
  pthread_mutex_destroy(&air_arr_lock);

  sem_unlink("/use_runway");
  sem_unlink("/break_sem");
}


// created by prof
static int initialize(aircraft_info *ai, char *filename) {
  aircraft_on_runway = 0;    // counter mutex
  commercial_on_runway = 0;  // counter mutex
  cargo_on_runway = 0;       // counter mutex
  emergency_on_runway = 0;   // counter mutex
  aircraft_since_break = 0;  // counter mutex
  current_direction = NORTH; // controller mutex
  consecutive_direction = 0; // counter mutex

  // My vars
  // counters
  air_num[COMMERCIAL] = 0;  // counter mutex
  air_num[CARGO] = 0;       // counter mutex
  air_num[EMERGENCY] = 0;   // counter mutex

  max_runway_time = 0; // no need for mutex

  // averages don't need to be init

  // mutexes
  int mutex_res = 0;

  mutex_res += pthread_mutex_init(&controller_lock, NULL);
  mutex_res += pthread_mutex_init(&counter_lock, NULL);
  mutex_res += pthread_mutex_init(&air_arr_lock, NULL);
  mutex_res += pthread_mutex_init(&air_arr_lock, NULL);
  mutex_res += pthread_mutex_init(&air_arr_lock, NULL);

  if (mutex_res != 0) {
    perror("mutex_init failed");
    exit(EXIT_FAILURE);
  }

  // semaphores
  // Unlink any existing semaphores first
  sem_unlink("/use_runway_sem");
  sem_unlink("/break_sem");
  
  runway = sem_open("/use_runway_sem", O_CREAT | O_EXCL, S_IRUSR | S_IWUSR, 2); // max 2 on runway
  air_since_break = sem_open("/break_sem", O_CREAT | O_EXCL, S_IRUSR | S_IWUSR,
                             8); // 8 consec flights

  if (runway == SEM_FAILED || air_since_break == SEM_FAILED) {
    perror("sem_open failed");
    exit(EXIT_FAILURE);
  }

  /* seed random number generator for fuel reserves */
  srand(time(NULL));

  /* Read in the data file and initialize the aircraft array */
  FILE *fp;

  if ((fp = fopen(filename, "r")) == NULL) {
    printf("Cannot open input file %s for reading.\n", filename);
    exit(1);
  }

  int i = 0;
  char line[256];
  while (fgets(line, sizeof(line), fp) && i < MAX_AIRCRAFT) {
    /* Skip comment lines and empty lines */
    if (line[0] == '#' || line[0] == '\n' || line[0] == '\r') {
      continue;
    }

    /* Parse the line */
    if (sscanf(line, "%d%d%d", &(ai[i].aircraft_type), &(ai[i].arrival_time), &(ai[i].runway_time)) == 3) {
      /* Assign random fuel reserve between FUEL_MIN and FUEL_MAX if not emergency type */
      ai[i].fuel_reserve = ai[i].aircraft_type != EMERGENCY ? FUEL_MIN + (rand() % (FUEL_MAX - FUEL_MIN + 1)) : EMERGENCY_TIMEOUT;
      
      // get max runway time
      max_runway_time = ai[i].runway_time > max_runway_time ? ai[i].runway_time : max_runway_time;
      i++;
    }
  }

  // add one so emergency declared before fuel runs out
  max_runway_time++;

  fclose(fp);
  return i;
}

/* Code executed by controller to simulate taking a break
 * You do not need to add anything here.
 */
__attribute__((unused)) static void take_break() {
  printf("\nBREAK TIME - The air traffic controller is taking a break now.\n\n");
  sleep(5);
  assert(aircraft_on_runway == 0);

  // reset air_since_break sem
  for (int i = 0; i < 8; i++) {
    sem_post(air_since_break);
  }

  aircraft_since_break = 0;
}

/* Code executed to switch runway direction
 * You do not need to add anything here.
 */
__attribute__((unused)) static void switch_direction() {
  printf("\nDIRECTION SWITCH - Switching runway direction from %s to %s\n",
         current_direction == NORTH ? "NORTH" : "SOUTH",
         current_direction == NORTH ? "SOUTH" : "NORTH");

  assert(aircraft_on_runway == 0); // Runway must be empty to switch

  sleep(DIRECTION_SWITCH_TIME);

  current_direction = (current_direction == NORTH) ? SOUTH : NORTH;
  consecutive_direction = 0;

  printf("Runway direction switched to %s\n\n",
         current_direction == NORTH ? "NORTH" : "SOUTH");
}

/* Code for the air traffic controller thread. This is fully implemented except
 * for synchronization with the aircraft. See the comments within the function
 * for details.
 */
void *controller_thread(void *arg) {
  // Suppress the warning for now
  (void)arg;

  printf("The air traffic controller arrived and is beginning operations\n");

  /* Loop while waiting for aircraft to arrive. */
  while (1) {
    // my code

    // lock outside if conditional is met then data changed after another thread
    pthread_mutex_lock(&controller_lock);

    // checks conditional mutex lock if aircraft since break == 8
    if (aircraft_since_break == 8) {
      // wait for aircraft on runway to leave
      while (aircraft_on_runway != 0) {
        usleep(100000); // 100ms sleep to prevent busy waiting
      }

      // once no aircraft on runway, take break
      take_break();

      // been 5 secs, update reserves
      pthread_mutex_lock(&air_arr_lock);
      for (int i = 0; i < 3; i++) {
        update_fuel_reserves(i);
      }
      pthread_mutex_unlock(&air_arr_lock);

    }

    // assuming 3, not 4, consecutive is trigger
    if ((((consecutive_direction >= DIRECTION_LIMIT) &&   // base condition
          (avg_fr[!current_direction] <                   // priority conditional
           (avg_fr[current_direction] - 5 + (int)(2 * consecutive_direction / 3)))     
          && (air_num[!current_direction] > 0))           // if no aircraft in current direction, change
         || ((air_num[current_direction] == 0) &&
             (air_num[!current_direction] != 0)))         // no aircraft in current dir
        && (air_num[EMERGENCY] < consecutive_direction)) {// minimize switching when emerg air exist

      while (aircraft_on_runway != 0) {
        usleep(100000); // 100ms sleep to prevent busy waiting
      }

      switch_direction();

      // been 5 secs, update reserves
      pthread_mutex_lock(&air_arr_lock);
      for (int i = 0; i < 3; i++) {
        update_fuel_reserves(i);
      }
      pthread_mutex_unlock(&air_arr_lock);
    }

    pthread_mutex_unlock(&controller_lock);

    // conditional that will tell most threads to skip
    // keeps from getting hung on sem_wait
    if (aircraft_on_runway < MAX_RUNWAY_CAPACITY && aircraft_since_break < CONTROLLER_LIMIT && check_aircraft_num() != 0) {
      // get resources
      sem_wait(runway);
      sem_wait(air_since_break);

      // update counters
      pthread_mutex_lock(&counter_lock);
      aircraft_on_runway++;
      aircraft_since_break++;
      pthread_mutex_unlock(&counter_lock);

      // flag for later conditionals
      int found_aircraft = 0;

      // not perfect prediction but too lazy to optimize more
      // emergency on runway has a max of 2
      if ( (air_num[EMERGENCY] > emergency_on_runway) // are there more emergency to put on runway
        &&((avg_fr[EMERGENCY] < avg_fr[current_direction] - 5)) ) { // prioritize curr direction if it has less fuel

        // tell first available emergency to use runway
        pthread_mutex_lock(&counter_lock);
        pthread_mutex_lock(&air_arr_lock);
        
        for (int i = 0; i < air_num[EMERGENCY]; i++) {
          if (air_arr[EMERGENCY][i] != NULL && air_arr[EMERGENCY][i]->use_runway == 0) {
            air_arr[EMERGENCY][i]->use_runway = 1;
            found_aircraft = 1;
            break;
          }
        }

        pthread_mutex_unlock(&air_arr_lock);

        // if aircraft was told to use runway
        if (found_aircraft) {
          // update counters
          emergency_on_runway++;
        
          pthread_mutex_unlock(&counter_lock);

          // tell everyone to check if they can use runway
          pthread_cond_broadcast(&air_arr_cond);
        } else {
          pthread_mutex_unlock(&counter_lock);
        }
      
      // if curr direction north and more commercial aircraft to add
      // commerical on runway has a max of 2
      } else if (current_direction == NORTH && air_num[COMMERCIAL] > commercial_on_runway) {
        // tell first available commercial to use runway
        // Hold both locks to ensure consistency
        pthread_mutex_lock(&counter_lock);
        pthread_mutex_lock(&air_arr_lock);
        
        for (int i = 0; i < air_num[COMMERCIAL]; i++) {
          if (air_arr[COMMERCIAL][i] != NULL && air_arr[COMMERCIAL][i]->use_runway == 0) {
            air_arr[COMMERCIAL][i]->use_runway = 1;
            found_aircraft = 1;
            break;
          }
        }

        pthread_mutex_unlock(&air_arr_lock);

        // if aircraft told to use runway
        if (found_aircraft) {
          // update counters
          commercial_on_runway++;
          consecutive_direction++;
          pthread_mutex_unlock(&counter_lock);

          // tell everyone to check if they can use runway
          pthread_cond_broadcast(&air_arr_cond);
        } else {
          pthread_mutex_unlock(&counter_lock);
        }
      
      // if current direction is south and there are cargo flights 
      // that haven't been told to use the runway
      //
      // cargo_on_runway: has a max of 2
      } else if (current_direction == SOUTH && air_num[CARGO] > cargo_on_runway) {
        // tell first available cargo to use runway
        // Hold both locks to ensure consistency
        pthread_mutex_lock(&counter_lock);
        pthread_mutex_lock(&air_arr_lock);
        
        for (int i = 0; i < air_num[CARGO]; i++) {
          if (air_arr[CARGO][i] != NULL && air_arr[CARGO][i]->use_runway == 0) {
            air_arr[CARGO][i]->use_runway = 1;
            found_aircraft = 1;
            break;
          }
        }

        pthread_mutex_unlock(&air_arr_lock);

        // if aircraft told to use runway
        if (found_aircraft) {
          // update counters
          cargo_on_runway++;
          consecutive_direction++;
          pthread_mutex_unlock(&counter_lock);

          // tell everyone to check if they can use runway
          pthread_cond_broadcast(&air_arr_cond);
        } else {
          pthread_mutex_unlock(&counter_lock);
        }
      
      // No one in queue
      } else {
        // update vals 
        pthread_mutex_lock(&counter_lock);
        aircraft_on_runway--;
        aircraft_since_break--;
        pthread_mutex_unlock(&counter_lock);

        // release resources
        sem_post(runway);
        sem_post(air_since_break);
      }

    }

    // end of my code

    /* Allow thread to be cancelled */
    pthread_testcancel();
    usleep(100000); // 100ms sleep to prevent busy waiting
  }
  pthread_exit(NULL);
}

// DESC:    commercial aircraft request to use runway
// PARAMS:
//          ai: instace of a commercial aircraft 
// RETURN:
//          None
void commercial_enter(aircraft_info *ai) {
  // Suppress the compiler warning
  (void)ai;

  // adding instance to array is requesting
  
  pthread_mutex_lock(&air_arr_lock);

  pthread_mutex_lock(&counter_lock);
  air_arr[COMMERCIAL][air_num[COMMERCIAL]++] = ai;
  pthread_mutex_unlock(&counter_lock);

  sort_flights_fuel(air_arr[COMMERCIAL], 0, air_num[COMMERCIAL] - 1);
  update_avg_arrs();

  // wait till allowed to use runway
  while (!ai->use_runway) {
    pthread_cond_wait(&air_arr_cond, &air_arr_lock); // unlocks air_arr_lock while waiting, re-locks on return
  }
  
  // Done waiting, unlock the mutex
  pthread_mutex_unlock(&air_arr_lock);
}

// DESC:    cargo aircraft request to use runway
// PARAMS:
//          ai: instace of a cargo aircraft
// RETURN:
//          None
void cargo_enter(aircraft_info *ai) {
  (void)ai;

  // adding instance to array is requesting
  pthread_mutex_lock(&air_arr_lock);

  pthread_mutex_lock(&counter_lock);
  air_arr[CARGO][air_num[CARGO]++] = ai;
  pthread_mutex_unlock(&counter_lock);

  sort_flights_fuel(air_arr[CARGO], 0, air_num[CARGO] - 1);
  update_avg_arrs();

  // wait till allowed to use runway
  while (!ai->use_runway) {
    pthread_cond_wait(&air_arr_cond, &air_arr_lock); // unlocks air_arr_lock while waiting, re-locks on return
  }
  
  // Done waiting, unlock the mutex
  pthread_mutex_unlock(&air_arr_lock);
}

// DESC:    emergency aircraft request to use runway
// PARAMS:
//          ai: instace of a emergency aircraft
// RETURN:
//          None
void emergency_enter(aircraft_info *ai) {
  (void)ai;

  // adding instance to array is requesting
  pthread_mutex_lock(&air_arr_lock);

  pthread_mutex_lock(&counter_lock);
  air_arr[EMERGENCY][air_num[EMERGENCY]++] = ai;
  pthread_mutex_unlock(&counter_lock);

  sort_flights_fuel(air_arr[EMERGENCY], 0, air_num[EMERGENCY] - 1);
  update_avg_arrs();

  // wait till allowed to use runway
  while (!ai->use_runway) {
    pthread_cond_wait(&air_arr_cond, &air_arr_lock); // unlocks air_arr_lock while waiting, re-locks on return
  }
  
  // Done waiting, unlock the mutex
  pthread_mutex_unlock(&air_arr_lock);
}

/* Code executed by an aircraft to simulate the time spent on the runway
 * You do not need to add anything here.
 */
static void use_runway(int t) { sleep(t); }

// DESC:    commercial aircraft have used runway
//          removes instance from commercial array,
//          releases resources, and updates counters
// PARAMS:
//          aircraft: instace of a commercial aircraft
// RETURN:
//          None
static void commercial_leave(aircraft_info *aircraft) {
  
  // remove instances from commercial array
  pthread_mutex_lock(&counter_lock);
  pthread_mutex_lock(&air_arr_lock);
  remove_inst(COMMERCIAL, aircraft->aircraft_id);
  pthread_mutex_unlock(&air_arr_lock);

  // update counters
  aircraft_on_runway--;
  commercial_on_runway--;
  air_num[COMMERCIAL]--; 
  pthread_mutex_unlock(&counter_lock);

  // release resource
  sem_post(runway);
}

// DESC:    cargo aircraft have used runway
//          removes instance from cargo array,
//          releases resources, and updates counters
// PARAMS:
//          aircraft: instace of a cargo aircraft
// RETURN:
//          None
static void cargo_leave(aircraft_info *aircraft) {
  // remove instances from cargo array
  pthread_mutex_lock(&counter_lock);
  pthread_mutex_lock(&air_arr_lock);
  remove_inst(CARGO, aircraft->aircraft_id);
  pthread_mutex_unlock(&air_arr_lock);
  
  // update counters
  aircraft_on_runway--;
  cargo_on_runway--;
  air_num[CARGO]--; 
  pthread_mutex_unlock(&counter_lock);

  // release resource
  sem_post(runway);
}

// DESC:    emergency aircraft have used runway
//          removes instance from emergency array,
//          releases resources, and updates counters
// PARAMS:
//          aircraft: instace of a emergency aircraft
// RETURN:
//          None
static void emergency_leave(int air_id) {
  // remove instances from emergency array
  pthread_mutex_lock(&counter_lock);
  pthread_mutex_lock(&air_arr_lock);
  remove_inst(EMERGENCY, air_id);
  pthread_mutex_unlock(&air_arr_lock);

  // update counters
  aircraft_on_runway--;
  emergency_on_runway--;
  air_num[EMERGENCY]--;
  pthread_mutex_unlock(&counter_lock);

  // remove hold on resource
  sem_post(runway);
}

/* Main code for commercial aircraft threads.
 * You do not need to change anything here, but you can add
 * debug statements to help you during development/debugging.
 */
void *commercial_aircraft(void *ai_ptr) {
  aircraft_info *ai = (aircraft_info *)ai_ptr;

  /* Record arrival time for fuel tracking */
  ai->arrival_timestamp = time(NULL);
  ai->updated_timestamp = time(NULL);

  /* Request runway access */
  commercial_enter(ai);

  pthread_mutex_lock(&counter_lock);
  printf("Commercial aircraft %d (fuel: %ds) is now on the runway (direction: "
         "%s)\n",
         ai->aircraft_id, ai->fuel_reserve,
         current_direction == NORTH ? "NORTH" : "SOUTH");

  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);
  // if it didn't declare an emergency
  if (ai->aircraft_type != EMERGENCY){
    assert(cargo_on_runway == 0);
  }

  pthread_mutex_unlock(&counter_lock);

  /* Use runway  --- do not make changes to the 3 lines below*/
  printf("Commercial aircraft %d begins runway operations for %d seconds\n",
         ai->aircraft_id, ai->runway_time);

  use_runway(ai->runway_time);
  printf("Commercial aircraft %d completes runway operations and prepares to "
         "depart\n",
         ai->aircraft_id);

  /* Leave runway */
  // check if declared emergency
  // if not use commercial leave
  if (ai->aircraft_type == COMMERCIAL){
    commercial_leave(ai);
  } else {
    emergency_leave(ai->aircraft_id);
  }

  printf("Commercial aircraft %d has cleared the runway\n", ai->aircraft_id);

  pthread_mutex_lock(&counter_lock);
  if (!(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0)) {
    printf("ASSERT FAILURE: aircraft_on_runway=%d (should be 0-%d)\n",
           aircraft_on_runway, MAX_RUNWAY_CAPACITY);
    printf(
        "Runway state: commercial=%d, cargo=%d, emergency=%d, direction=%s\n",
        commercial_on_runway, cargo_on_runway, emergency_on_runway,
        current_direction == NORTH ? "NORTH" : "SOUTH");
  }
  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);
  pthread_mutex_unlock(&counter_lock);

  // update fuel reserves since it has a few seconds since
  pthread_mutex_lock(&air_arr_lock);
  for (int i = 0; i < 3; i++) {
    update_fuel_reserves(i);
  }
  pthread_mutex_unlock(&air_arr_lock);

  pthread_exit(NULL);
}

/* Main code for cargo aircraft threads.
 * You do not need to change anything here, but you can add
 * debug statements to help you during development/debugging.
 */
void *cargo_aircraft(void *ai_ptr) {
  aircraft_info *ai = (aircraft_info *)ai_ptr;

  /* Record arrival time for fuel tracking */
  ai->arrival_timestamp = time(NULL);
  ai->updated_timestamp = time(NULL);
  ai->updated_timestamp = time(NULL);

  /* Request runway access */
  cargo_enter(ai);

  printf("Cargo aircraft %d (fuel: %ds) is now on the runway (direction: %s)\n",
         ai->aircraft_id, ai->fuel_reserve,
         current_direction == NORTH ? "NORTH" : "SOUTH");

  pthread_mutex_lock(&counter_lock);
  if (!(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0)) {
    printf("ASSERT FAILURE: aircraft_on_runway=%d (should be 0-%d)\n",
           aircraft_on_runway, MAX_RUNWAY_CAPACITY);
    printf(
        "Runway state: commercial=%d, cargo=%d, emergency=%d, direction=%s\n",
        commercial_on_runway, cargo_on_runway, emergency_on_runway,
        current_direction == NORTH ? "NORTH" : "SOUTH");
  }

  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);
  // if it didn't declare an emergency
  if (ai->aircraft_type != EMERGENCY){
    assert(commercial_on_runway == 0);
  }
         
         printf("Cargo aircraft %d begins runway operations for %d seconds\n",
          ai->aircraft_id, ai->runway_time);
          
          pthread_mutex_unlock(&counter_lock);

  use_runway(ai->runway_time);
  printf(
      "Cargo aircraft %d completes runway operations and prepares to depart\n",
      ai->aircraft_id);

  /* Leave runway */
  // check if declared emergency
  if (ai->aircraft_type == CARGO) {
    cargo_leave(ai);
  } else {
    emergency_leave(ai->aircraft_id);
  }

  printf("Cargo aircraft %d has cleared the runway\n", ai->aircraft_id);

  pthread_mutex_lock(&counter_lock);
  if (!(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0)) {
    printf("ASSERT FAILURE: aircraft_on_runway=%d (should be 0-%d)\n",
           aircraft_on_runway, MAX_RUNWAY_CAPACITY);
    printf(
        "Runway state: commercial=%d, cargo=%d, emergency=%d, direction=%s\n",
        commercial_on_runway, cargo_on_runway, emergency_on_runway,
        current_direction == NORTH ? "NORTH" : "SOUTH");
  }
  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);

  pthread_mutex_unlock(&counter_lock);

  // update fuel reserves since it has a few seconds since
  pthread_mutex_lock(&air_arr_lock);
  for (int i = 0; i < 3; i++) {
    update_fuel_reserves(i);
  }
  pthread_mutex_unlock(&air_arr_lock);

  pthread_exit(NULL);
}

/* Main code for emergency aircraft threads.
 * You do not need to change anything here, but you can add
 * debug statements to help you during development/debugging.
 */
void *emergency_aircraft(void *ai_ptr) {
  aircraft_info *ai = (aircraft_info *)ai_ptr;

  /* Record arrival time for fuel and emergency timeout tracking */
  ai->arrival_timestamp = time(NULL);
  ai->updated_timestamp = time(NULL);

  /* Request runway access */
  emergency_enter(ai);

  printf("EMERGENCY aircraft %d (fuel: %ds) is now on the runway (direction: "
         "%s)\n",
         ai->aircraft_id, ai->fuel_reserve,
         current_direction == NORTH ? "NORTH" : "SOUTH");

  pthread_mutex_lock(&counter_lock);
  if (!(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0)) {
    printf("ASSERT FAILURE: aircraft_on_runway=%d (should be 0-%d)\n",
           aircraft_on_runway, MAX_RUNWAY_CAPACITY);
    printf(
        "Runway state: commercial=%d, cargo=%d, emergency=%d, direction=%s\n",
        commercial_on_runway, cargo_on_runway, emergency_on_runway,
        current_direction == NORTH ? "NORTH" : "SOUTH");
  }
  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);

  printf("EMERGENCY aircraft %d begins runway operations for %d seconds\n",
         ai->aircraft_id, ai->runway_time);

  pthread_mutex_unlock(&counter_lock);

  use_runway(ai->runway_time);
  printf("EMERGENCY aircraft %d completes runway operations and prepares to "
         "depart\n",
         ai->aircraft_id);

  /* Leave runway */
  emergency_leave(ai->aircraft_id);

  printf("EMERGENCY aircraft %d has cleared the runway\n", ai->aircraft_id);

  pthread_mutex_lock(&counter_lock);
  if (!(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0)) {
    printf("ASSERT FAILURE: aircraft_on_runway=%d (should be 0-%d)\n",
           aircraft_on_runway, MAX_RUNWAY_CAPACITY);
    printf(
        "Runway state: commercial=%d, cargo=%d, emergency=%d, direction=%s\n",
        commercial_on_runway, cargo_on_runway, emergency_on_runway,
        current_direction == NORTH ? "NORTH" : "SOUTH");
  }
  assert(aircraft_on_runway <= MAX_RUNWAY_CAPACITY && aircraft_on_runway >= 0);
  assert(commercial_on_runway >= 0 &&
         commercial_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(cargo_on_runway >= 0 && cargo_on_runway <= MAX_RUNWAY_CAPACITY);
  assert(emergency_on_runway >= 0 &&
         emergency_on_runway <= MAX_RUNWAY_CAPACITY);
  
  pthread_mutex_unlock(&counter_lock);

  // update fuel reserves since it has a few seconds since
  pthread_mutex_lock(&air_arr_lock);
  for (int i = 0; i < 3; i++) {
    update_fuel_reserves(i);
  }
  pthread_mutex_unlock(&air_arr_lock);

  pthread_exit(NULL);
}

/* Main function sets up simulation and prints report
 * at the end.
 * GUID: 355F4066-DA3E-4F74-9656-EF8097FBC985
 */
int main(int nargs, char **args) {
  int i;
  int result;
  int num_aircraft;
  void *status;
  pthread_t controller_tid;
  pthread_t aircraft_tid[MAX_AIRCRAFT];
  aircraft_info ai[MAX_AIRCRAFT];

  if (nargs != 2) {
    printf("Usage: runway <name of inputfile>\n");
    return EINVAL;
  }

  printf("making aircraft...\n");
  num_aircraft = initialize(ai, args[1]);
  if (num_aircraft > MAX_AIRCRAFT || num_aircraft <= 0) {
    printf("Error:  Bad number of aircraft threads. "
           "Maybe there was a problem with your input file?\n");
    return 1;
  }

  printf("Starting runway simulation with %d aircraft ...\n", num_aircraft);

  printf("creating controller...\n");
  result = pthread_create(&controller_tid, NULL, controller_thread, NULL);

  if (result) {
    printf("runway:  pthread_create failed for controller: %s\n",
           strerror(result));
    exit(1);
  }

  printf("going through aircraft...\n");
  for (i = 0; i < num_aircraft; i++) {
    ai[i].aircraft_id = i;
    sleep(ai[i].arrival_time);

    if (ai[i].aircraft_type == COMMERCIAL) {
      result = pthread_create(&aircraft_tid[i], NULL, commercial_aircraft,
                              (void *)&ai[i]);
    } else if (ai[i].aircraft_type == CARGO) {
      result = pthread_create(&aircraft_tid[i], NULL, cargo_aircraft,
                              (void *)&ai[i]);
    } else {
      result = pthread_create(&aircraft_tid[i], NULL, emergency_aircraft,
                              (void *)&ai[i]);
    }

    if (result) {
      printf("runway: pthread_create failed for aircraft %d: %s\n", i,
             strerror(result));
      exit(1);
    }
  }

  /* wait for all aircraft threads to finish */
  for (i = 0; i < num_aircraft; i++) {
    pthread_join(aircraft_tid[i], &status);
  }

  /* tell the controller to finish. */
  pthread_cancel(controller_tid);
  pthread_join(controller_tid, &status);
  destroy_mutexes();

  printf("Runway simulation done.\n");

  return 0;
}
