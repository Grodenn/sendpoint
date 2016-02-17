#settings that is used
CC = gcc
CFLAGS = -Wall -std=c99 -g
FILES = sendpoint.c
OUTPUT = sendpoint

# Librarys
INCLUDE = -I/usr/local/include
LDFLAGS = -L/usr/local/lib/
LDLIBS = -lcurl

#Build program
sendpoint: $(FILES)

#run the program
execute: 
	./$(OUTPUT)

#clean, compile and run the program	
run: clean build execute

#delete binary
clean: 
	rm -fv sendpoint core
