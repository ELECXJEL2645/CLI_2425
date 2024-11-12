
# Set compiler
CC=g++

# Compile flags (-c to output object file .o)
CFLAGS=-c -Wall

# default command use "make" to call this
all: main.exe

# linking step .o files are made for each .cpp files $@ is target wildcard
main.exe: main.o funcs.o
	echo "you are using makefile well done"
	$(CC) main.o funcs.o -o $@

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

funcs.o: funcs.cpp
	$(CC) $(CFLAGS) funcs.cpp

# use "make clean" to run this, rm doesnt work on windows
clean:
	rm *.o main.exe
