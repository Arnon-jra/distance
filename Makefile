# -*- Makefile -*-

#target: dependencies
#	action

BIN = bin
OBJECTS := distance.o get_double.o #(patsubst %.c,%.o,$(wildcard *.c))
#VPATH = src

vpath %.c src
vpath %.h inc
vpath %.o obj

all: $(BIN)/distance # make command will invoke the first recipe without argument

$(BIN)/distance: $(OBJECTS)
	gcc $(OBJECTS) -o $@ -l m

distance.o: distance.c get_double.h
	gcc -c $<

get_double.o: get_double.c
	gcc -c get_double.c

.PHONY : clean
clean:
	rm -f $(OBJECTS) $(BIN)/distance 

