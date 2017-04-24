all: asm obj bin
asm: empty.s print.s function.s function2.s if.s
obj: empty.o print.o function.o function2.o if.o
bin: empty.out print.out function.out function2.out if.out

%.s:%.c
	gcc -S $^ -o $@ -fno-asynchronous-unwind-tables

%.o:%.c
	gcc -c $^ -o $@

%.out:%.c
	gcc $^ -o $@ -g

clean:
	rm -rf *.o *.out *.dSYM *.sout *.s

mrproper: clean
	rm -rf *~
