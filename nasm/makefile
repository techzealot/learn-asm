ALL=hello

.phony all:${ALL}

sum:sum.o
	ld sum.o -o sum -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2

%:%.o
	ld -o $@ $<

%.o:%.asm
	nasm -f elf64 -o $@ $<

clean:
	rm -rf $(ALL) *.o