all: obj bin
obj: minimal.o print.o add.o inc.o fact.o
bin: minimal.out print.out add.out inc.out fact.out

%.o:%.s
	gcc -c $^ -o $@

%.out:%.s
	gcc $^ -o $@ -g

clean:
	rm -rf *.o *.out *.dSYM

mrproper: clean
	rm -rf *~
