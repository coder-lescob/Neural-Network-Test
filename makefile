CC      := gcc # use the GNU COMPILER COLLECTION to compile

# project dirs
SRC   := src
BUILD := build
BIN   := $(BUILD)/bin
OBJ   := $(BUILD)/obj

LIB_DIR := lib # the cool NeuralNetwork C library directory
LIB     := genann # the cool NeuralNetwork C library

# compiler flags
CFLAGS  := -Wextra -Wall -Wpedantic -Werror
LDFLAGS := -l$(LIB) -L$(LIB_DIR) -I$(LIB_DIR)

clean:
	@rm -f $(BIN)/*
	@rm -f $(OBJ)/*

build:
	@$(CC) $(CFLAGS) -o $(BIN)/main $(SRC)/main.c $(LDFLAGS)

run:
	@./$(BIN)/main

.PHONY: build clean