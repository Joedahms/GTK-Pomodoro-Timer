# Makefile for compiling a GTK application

# Compiler
CC = gcc

# Compiler flags
CFLAGS = `pkg-config --cflags gtk4`

# Linker flags
LDFLAGS = `pkg-config --libs gtk4`

# Source file
SRC = main.c

# Output executable
OUT = app

# Default target
all: $(OUT)

# Build the application
$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC) $(LDFLAGS)

# Clean target
clean:
	rm -f $(OUT)

# Phony targets
.PHONY: all clean
