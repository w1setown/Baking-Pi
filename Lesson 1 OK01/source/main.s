.section .init
.globl _start
_start:


ldr r0,=0x20200000 // ldr reg,=val puts the number val in the register

mov r1,#1 // move the value 1 into register r1
lsl r1,#18 // shift the value in r1 left by 18 bits
str r1,[r0,#4] // store the value in the memory address 0x20200000

mov r1,#1
lsl r1,#16 // shift the value in r1 left by 16 bits
str r1,[r0,#30] // store the value in the memory address 0x20200000 + 30

loop$:
b loop$ // infinite loop to keep the program running
