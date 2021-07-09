#data start
#data section ,variables with init value
.section .data
output:
.asciz "The processor Vender ID is '%s'\n"

#data end
#--------------------------------
#bss start
#variables without initialized value
.section .bss
    .lcomm buffer,12

#bss end
#------------------------------
#text start
#text section
.section .text
#entry point
.globl _start
#start point
_start:

movl $0,%eax
cpuid
movl $buffer,%edi
movl %ebx,(%edi)
movl %edx,4(%edi)
movl %ecx,8(%edi)
pushl $buffer
pushl $output
call printf
# reset stack
addl $8,%esp
pushl $0
call exit


#text end
#------------------------------
