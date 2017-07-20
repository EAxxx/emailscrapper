# Macros para compilacao
CC = gcc
CFLAGS = -Wextra -ll
DIR = src
FILENAME = $(DIR)/main.c
TARGET = ./main
SRCS := $(shell find $(DIR) -name '*.c')
OBJS = $(SRCS:.c=.o)
LEX = lex
LEXSRCS := $(shell find $(DIR) -name '*.l')

# Macros para teste
BASH = sh
TEST_SCRIPT = test.sh
VERBOSE ?= 1

# Macros para construcao do zip
ZIP = zip
USERNAME ?= $(USER)
ZIPFILE = $(USERNAME).zip
EXTENSIONS = *.l *.c *.h *.in *.out *.sh

.PHONY: depend clean

all:lex $(TARGET)

lex:$(LEXSRCS)
	$(LEX) -o$(FILENAME) $(LEXSRCS)

$(TARGET):$(OBJS)
	$(CC) -o$(TARGET) $(OBJS) $(CFLAGS)

$(OBJS):$(SRCS)
	$(CC) $(CFLAGS) -c $< -o $@

test:all
	$(BASH) $(TEST_SCRIPT) $(TARGET) $(VERBOSE)

zip:clean
	$(ZIP) -R $(ZIPFILE)  Makefile $(EXTENSIONS)

clean:
	$(RM) $(FILENAME)
	$(RM) ./$(TARGET)
	$(RM) $(DIR)/*.o
	$(RM) ./$(ZIPFILE)
