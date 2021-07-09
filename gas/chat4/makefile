OBJS= cpuid.o cpuid2.o
ELFS:= ${OBJS:%.o=%}
ASFLAGS:= --gstabs --32
LDFLAGS:= -m elf_i386

.phony: all run clean
all: ${ELFS}

${ELFS}: %: %.o
	ld $< -o $@ ${LDFLAGS}

cpuid2: cpuid2.o
	ld ${LDFLAGS} -dynamic-linker /lib64/ld-linux-x86-64.so.2 cpuid2.o -o cpuid2

# $< first dep $@ target
${OBJS}: %.o : %.S
	as $< -o $@ ${ASFLAGS}

run: ${ELFS}
	./$<

clean:
#@ will hide command print
	@echo "clean objects and elfs"
	@-rm -rf ${OBJS} ${ELFS}