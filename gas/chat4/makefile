OBJS=cpuid.o cpuid_c.o
BIN:=bin
ELFS:= ${OBJS:%.o=${BIN}/%}
ASFLAGS:= --gstabs --32
LDFLAGS:= -m elf_i386

.phony: all run clean
all: ${ELFS}

${ELFS}: ${BIN}/%: %.o
	ld $< -o $@ ${LDFLAGS}
# link libc when end with _c,override common link rule
$(filter %_c,${ELFS}): ${BIN}/%: %.o
	ld ${LDFLAGS} -dynamic-linker /lib/ld-linux.so.2 -lc $< -o $@

# $< first dep $@ target
${OBJS}: %.o : %.S
	as $< -o $@ ${ASFLAGS}

run: ${ELFS}
	@for elf in $^;  \
	do \
	./$$elf ;\
	done

clean:
#@ will hide command print
	@echo "clean objects and elfs"
	@-rm -rf ${OBJS} ${ELFS}