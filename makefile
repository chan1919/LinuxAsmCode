all: exit maxnum power test

exit: exit.o
	ld exit.o -o exit

exit.o: exit.s
	as exit.s -o exit.o

maxnum: maxnum.o
	ld maxnum.o -o maxnum

maxnum.o: maxnum.s
	as maxnum.s -o maxnum.o

power: power.o
	ld power.o -o power

power.o: power.s
	as power.s -o power.o 

test: test.o
	ld test.o -o test

test.o: test.s
	as test.s -o t.o

clean:
	rm *.o exit maxnum power test