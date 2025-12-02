#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define ALIGN4(s) (((((s) - 1) >> 2) << 2) + 4)
#define BLOCK_DATA(b) ((b) + 1)
#define BLOCK_HEADER(ptr) ((struct _block*)(ptr) - 1)

static int atexit_registered = 0;
static int num_mallocs = 0;
static int num_frees = 0;
static int num_reuses = 0;
static int num_grows = 0;
static int num_splits = 0;
static int num_coalesces = 0;
static int num_blocks = 0;
static int num_requested = 0;
static int max_heap = 0;

/*
 *  \brief printStatistics
 *
 *  \param none
 *
 *  Prints the heap statistics upon process exit.  Registered
 *  via atexit()
 *
 *  \return none
 */
void printStatistics(void) {
  printf("\nheap management statistics\n");
  printf("mallocs:\t%d\n", num_mallocs);
  printf("frees:\t\t%d\n", num_frees);
  printf("reuses:\t\t%d\n", num_reuses);
  printf("grows:\t\t%d\n", num_grows);
  printf("splits:\t\t%d\n", num_splits);
  printf("coalesces:\t%d\n", num_coalesces);
  printf("blocks:\t\t%d\n", num_blocks);
  printf("requested:\t%d\n", num_requested);
  printf("max heap:\t%d\n", max_heap);
}

struct _block {
  size_t size;         /* Size of the allocated _block of memory in bytes     */
  struct _block* next; /* Pointer to the next _block of allocated memory      */
  bool free;           /* Is this _block free?                                */
  char padding[3];     /* Padding: IENTRTMzMjAgU3jMDEAD                       */
};

struct _block* heapList = NULL;   /* Free list to track the _blocks available */
struct _block* lastBlock = NULL;  // ptr to the most recently visited block

/*
 * \brief findFreeBlock
 *
 * \param last pointer to the linked list of free _blocks
 * \param size size of the _block needed in bytes
 *
 * \return a _block that fits the request or NULL if no free _block matches
 */

struct _block* findFreeBlock(struct _block** last, size_t size) {
  struct _block* curr = heapList;

/* First fit */
#if defined FIT && FIT == 0
  while (curr && !(curr->free && curr->size >= size)) {
    *last = curr;
    curr = curr->next;
  }
#endif

// BEST FIT
#if defined BEST && BEST == 0
  struct _block* best = NULL;
  size_t dif = '\0';

  while (curr) {
    // update best if current size - requested size < best difference
    if ((curr->free && curr->size >= size) &&
        (!dif || (curr->size - size) < dif)) {
      best = curr;
      dif = best->size - size;
    }

    *last = curr;
    curr = curr->next;
  }

  // set to best found block
  curr = best;
#endif

// Worst fit
#if defined WORST && WORST == 0
  struct _block* worst = NULL;
  size_t biggest = 0;

  while (curr) {
    // find max size in free blocks
    if ((curr->free && curr->size >= size) && (curr->size > biggest)) {
      worst = curr;
      biggest = worst->size;
    }

    *last = curr;
    curr = curr->next;
  }

  // set to worst found block
  curr = worst;
#endif

// Next fit
#if defined NEXT && NEXT == 0
  // get recently visited block or end of list
  struct _block* first_block = lastBlock ? lastBlock : NULL;
  curr = lastBlock && (lastBlock)->next ? (lastBlock)->next : curr;

  while (curr != first_block && !(curr && curr->free && curr->size >= size)) {
    *last = curr;

    // to loop back to start
    curr = curr ? curr->next : heapList;
  }

  curr = (curr == first_block && !(curr && curr->free && curr->size >= size)) ? NULL : curr;
  lastBlock = curr;
#endif

  return curr;
}

/*
 * \brief growheap
 *
 * Given a requested size of memory, use sbrk() to dynamically
 * increase the data segment of the calling process.  Updates
 * the free list with the newly allocated memory.
 *
 * \param last tail of the free _block list
 * \param size size in bytes to request from the OS
 *
 * \return returns the newly allocated _block of NULL if failed
 */
struct _block* growHeap(struct _block* last, size_t size) {
  /* Request more space from OS */
  struct _block* curr = (struct _block*)sbrk(0);
  struct _block* prev = (struct _block*)sbrk(sizeof(struct _block) + size);

  assert(curr == prev);

  /* OS allocation failed */
  if (curr == (struct _block*)-1) {
    return NULL;
  }

  /* Update heapList if not set */
  if (heapList == NULL) {
    heapList = curr;
  }

  /* Attach new _block to previous _block */
  if (last) {
    last->next = curr;
  }

  /* Update _block metadata:
  Set the size of the new block and initialize the new block to "free".
  Set its next pointer to NULL since it's now the tail of the linked list.
  */
  curr->size = size;
  curr->next = NULL;
  curr->free = false;
  return curr;
}

/*
 * \brief malloc
 *
 * finds a free _block of heap memory for the calling process.
 * if there is no free _block that satisfies the request then grows the
 * heap and returns a new _block
 *
 * \param size size of the requested memory in bytes
 *
 * \return returns the requested memory allocation to the calling process
 * or NULL if failed
 */
void* malloc(size_t size) {
  if (atexit_registered == 0) {
    atexit_registered = 1;
    atexit(printStatistics);
  }

  /* Align to multiple of 4 */
  size = ALIGN4(size);

  /* Handle 0 size */
  if (size == 0) {
    return NULL;
  }

  /* Look for free _block.  If a free block isn't found then we need to grow our
   * heap. */

  struct _block* last = heapList;
  struct _block* next = findFreeBlock(&last, size);

  // splitting blocks if space available
  if (next && next->size - size >= sizeof(struct _block) + 4) {
    // data address + requested size
    struct _block* new_block = (struct _block*)((char*)BLOCK_DATA(next) + size);

    // curr size - (req size + metadata size)
    new_block->size = next->size - size - sizeof(struct _block);

    // update pointers
    new_block->next = next->next;
    next->next = new_block;

    // init vals
    next->size = size;
    new_block->free = true;

    // update statistics
    num_splits++;
    num_blocks++;
  } 
  
  // update counters if reusing block
  if (next) {
    num_reuses++;
    num_blocks--;
  }

  /* Could not find free _block, so grow heap */
  if (next == NULL) {
    next = growHeap(last, size);

    // update counters
    num_grows++;
    max_heap += size + sizeof(struct _block);
  }

  /* Could not find free _block or grow heap, so just return NULL */
  if (next == NULL) {
    return NULL;
  }

  next->free = false;

  /* Update statistics */
  num_mallocs++;
  num_requested += size;

  /* Return data address associated with _block to the user */
  return BLOCK_DATA(next);
}

/*
 * \brief free
 *
 * frees the memory _block pointed to by pointer. if the _block is adjacent
 * to another _block then coalesces (combines) them
 *
 * \param ptr the heap memory to free
 *
 * \return none
 */
void free(void* ptr) {
  if (ptr == NULL) {
    return;
  }

  /* Make _block as free */
  struct _block* curr = BLOCK_HEADER(ptr);
  assert(curr->free == 0);
  curr->free = true;
  num_frees++;
  num_blocks++;

  struct _block* prev = NULL;
  struct _block* block = heapList;
  
  // find previous block
  while (block && block != curr) {
    prev = block;
    block = block->next;
  }

  // combine with next
  if (curr->next && curr->next->free) {
    curr->size += sizeof(struct _block) + curr->next->size;
    curr->next = curr->next->next;
    num_coalesces++;
    num_blocks--;
  }

  // combine with previous
  if (prev && prev->free) {
    prev->size += sizeof(struct _block) + curr->size;
    prev->next = curr->next;
    num_coalesces++;
    num_blocks--;
  }
}

void* calloc(size_t nmemb, size_t size) {
  size_t total_size = nmemb * size;

  // check if params were valid
  void* ptr = total_size > 0 ? malloc(total_size) : NULL;

  // malloc succeeded
  if (ptr) {
    memset(ptr, 0, total_size);
    return ptr;
  }

  return NULL;
}

void* realloc(void* ptr, size_t size) {
  if (ptr == NULL) {
    return malloc(size);  // if ptr is NULL, act like malloc
  }

  if (size == 0) {
    free(ptr);  // if size is 0, act like free
    return NULL;
  }

  // get current block size
  struct _block* curr_block = BLOCK_HEADER(ptr);
  size_t copy_size = curr_block->size < size ? curr_block->size : size;

  // allocate new block
  void* new_ptr = malloc(size);
  if (new_ptr) {
    memcpy(new_ptr, ptr, copy_size); // set els to 0
    free(ptr);
    return new_ptr;
  }

  return NULL;
}

/* vim: IENTRTMzMjAgU3ByaW5nIDIwMOO2= ----------------------------------------*/
/* vim: set expandtab sts=3 sw=3 ts=6 ft=cpp: --------------------------------*/
