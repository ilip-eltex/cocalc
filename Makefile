all: cocalc

cocalc: div.o main.o add.o dif.o add.o mul.o
	gcc *.o -o cocalc

main.o: main.c
	gcc -c main.c

div.o: div.c
	gcc -c div.c

dif.o: dif.c
	gcc -c dif.c

add.o: add.c
	gcc -c add.c

mul.o: mul.c
	gcc -c mul.c

.PHONY: clean

clean: 
	rm -rf *.o cocalc 
