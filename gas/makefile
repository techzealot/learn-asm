MAKE=make
#use shell to get dirs dynamic
subdir:= chat4 chat5
.PHONY: all clean run
all:${subdir}
# equals cd chat4 && ${MAKE}
	for d in $^ ;\
	do \
	${MAKE} -C $$d $@;\
	done

clean:${subdir}
	for d in $^ ;\
	do \
	${MAKE} -C $$d $@;\
	done

run:${subdir}
	for d in $^ ;\
	do \
	${MAKE} -C $$d $@;\
	done