all: asm obj exe sexec
asm: empty.s print.s function.s function2.s
obj: empty.o print.o function.o function2.o
exe: empty.out print.out function.out function2.out
sexec: minimal.sout hello.sout

%.sout:%.s
	gcc $^ -o $@ -g

%.s:%.c
	gcc -S $^ -o $@ -fno-asynchronous-unwind-tables

%.o:%.c
	gcc -c $^ -o $@

%.out:%.c
	gcc $^ -o $@ -g

clean:
	rm -rf *.o *.out *.dSYM *.sout

mrproper: clean
	rm -rf *~
