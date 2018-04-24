%include "io.inc"

section .data
MULTA DD 00010002h
MULTB DD 0000FFFFh
PROD DQ 0h

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here

    AddStep:
    MOV EAX, [MULTA]
    ADD [PROD], EAX

    MOV EAX, [MULTB]
    DEC EAX
    MOV [MULTB], EAX
    
    jnz AddStep
    
    xor eax, eax
    ret