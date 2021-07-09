OBJS= cpuid.o
ELFS:= ${OBJS:%.o=%}
ASFLAGS:= --gstabs

.phony: all run clean
all: ${ELFS}

${ELFS}: %: %.o
	ld $< -o $@

# $< first dep $@ target
${OBJS}: %.o : %.S
	as $< -o $@ ${ASFLAGS}

run: ${ELFS}
	./$<

clean:
#@ will hide command print
	@echo "clean objects and elfs"
	@-rm -rf ${OBJS} ${ELFS}