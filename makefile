CC=gcc
CFLAGS=-lWarn -pedantic

l6: l6.o libmyifttt.a 
	cc l6.o -L. -lmyifttt -lcurl -o l6

l6.o: l6.c ifttt.h
	$(CC) $(CFLAGS) -c -ansi $<

libmyifttt.a:	ifttt.o
	ar -rcs libmyifttt.a ifttt.o

ifttt.o:  ifttt.c ifttt.h
	$(CC) $(CFLAGS) -c -ansi $<

clean:
	rm l6 *.o
