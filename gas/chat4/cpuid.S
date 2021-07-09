#data start
#data section ,variables with init value
.section .data
output:
.ascii "The processor Vender ID is 'xxxxxxxxxxxx'\n"

#data end
#--------------------------------
#bss start
#variables without initialized value
.section .bss



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
movl $output,%edi
movl %ebx,28(%edi)
movl %edx,32(%edi)
movl %ecx,36(%edi)
movl $4,%eax
movl $1,%ebx
movl $output,%ecx
movl $42,%edx
int $0x80
movl $1,%eax
movl $0,%ebx
int $0x80



#text end
#------------------------------
