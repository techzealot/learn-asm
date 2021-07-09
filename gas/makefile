MAKE=make
#use shell to get dirs dynamic
subdir:= chat4 
.PHONY: all clean
all:${subdir}
# equals cd chat4 && ${MAKE}
	${MAKE} -C $<

clean:${subdir}
	${MAKE} -C $< $@

run:${subdir}
	${MAKE} -C $< $@