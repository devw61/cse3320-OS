# Compiler and flags
CC = gcc
CFLAGS = -std=c17 -Wall -Wextra -Wpedantic -g -I/opt/homebrew/include -L/opt/homebrew/lib -ljpeg -Iinclude

# Directories
SRC_DIR = scripts
BUILD_DIR = build
TARGET = ines_disassembler

# Find all .c files in src/
SRC = $(wildcard $(SRC_DIR)/*.c)

# Convert src/file.c -> build/file.o
OBJ = $(SRC:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# Default target
all: $(TARGET)

# Link object files into the final executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $@

# Compile each .c into .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Remove build files
clean:
	rm -rf $(BUILD_DIR) $(TARGET)

# Optional: a quick rebuild rule
rebuild: clean all

.PHONY: all clean rebuild
