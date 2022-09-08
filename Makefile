# Connor Walsh
# 9/8/22
# Makefile
# The purpose of this file is to compile the Employee, Officer, and Supervisor .cpp and header files along with the main.

CC = g++
CFLAGS = -g -Wall -Wextra

default: MakeTest

MakeTest: main.o Employee.o Officer.o Supervisor.o

	$(CC) $(CFLAGS) -o MakeTest main.o Employee.o Officer.o Supervisor.o

main.o: main.cpp Employee.h Supervisor.h Officer.h

	$(CC) $(CFLAGS) -c main.cpp

Employee.o: Employee.cpp Employee.h

	$(CC) $(CFLAGS) -c Employee.cpp

Officer.o: Officer.o Officer.h

	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h

	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:

	$(RM) MakeTest *.o *~ 
