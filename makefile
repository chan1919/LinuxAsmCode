all: exit maxnum

exit: exit.o
	ld exit.o -o exit

exit.o: exit.s
	as exit.s -o exit.o

maxnum: maxnum.o
	ld maxnum.o -o maxnum

maxnum.o: maxnum.s
	as maxnum.s -o maxnum.o

clean:
	rm *.o exit maxnum