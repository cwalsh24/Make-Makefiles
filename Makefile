# Connor Walsh
# 9/12/22
# Makefile
# The purpose of this file is to compile the Employee, Officer, and Supervisor .cpp and
# header files along with the main. This will also create an executable for testing.
# Type "make" in the terminal to run the Makefile program. 

# Compile using the g++ compiler 
CC = g++
# Compile with all errors and warnings
CFLAGS = -g -Wall -Wextra

# When run, the Makefile creates an executable entitled employee. 
default: employee

# This line specifies the object files that are going to be used in the executable. 
employee: main.o Employee.o Officer.o Supervisor.o

	$(CC) $(CFLAGS) -o employee main.o Employee.o Officer.o Supervisor.o

# These are the files that are going to be compiled into the main object file. 
main.o: main.cpp Employee.h Supervisor.h Officer.h

	$(CC) $(CFLAGS) -c main.cpp

# These are the files that are going to be compiled into the Employee object file.
Employee.o: Employee.cpp Employee.h

	$(CC) $(CFLAGS) -c Employee.cpp

# These are the files that are going to be compiled into the Officer object file.
Officer.o: Officer.o Officer.h

	$(CC) $(CFLAGS) -c Officer.cpp

# These are the files that are going to be compiled into the Supervisor object file.
Supervisor.o: Supervisor.cpp Supervisor.h

	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
# This deletes all .o and ~ files along with the employee executable.
# Type make clean to delete these files.
	$(RM) employee *.o *~ 
