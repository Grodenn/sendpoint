#settings that is used
CC = gcc
CFLAGS = -Wall -std=c99
FILES = sendpoint.c
OUTPUT = sendpoint

# Librarys
INCLUDE = -I/usr/local/include 
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
