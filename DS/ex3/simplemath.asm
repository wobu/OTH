%include "io.inc"

section .data
A DD 23h
B DD 87h
C DD 5h
ERG DD 0
Zahl DD 1
Flag DD 0

section .text
global CMAIN
CMAIN:
    ;write your code here
    QUICKMAFFS:
    MOV eax, [A]
    SUB eax, [B]
    
    JO ENDMAFFS
    
    ADD eax, [C]
    
    JO ENDMAFFS
    
;    PUSHF
;    
;    POP EDX
;    MOV [Flag], EDX
;
        
    MOV [ERG], eax
   
    
    PRINT_STRING "A:"
    PRINT_DEC 4, A
    NEWLINE
    PRINT_STRING "B:"
    PRINT_DEC 4, B
    NEWLINE
    PRINT_STRING "C: "
    PRINT_DEC 4,C
    NEWLINE
    PRINT_STRING "Ergebnis: "
    PRINT_DEC 4,ERG
    NEWLINE
    PRINT_STRING "Zahl: "
    PRINT_DEC 4,Zahl
    NEWLINE
    NEWLINE
    
    MOV EAX, [A]
    SHL EAX, 1  
    JO ENDMAFFS
    MOV [A], EAX
    
    MOV EAX, [B]
    SHL EAX, 1
    JO ENDMAFFS
    MOV [B], EAX
    
    MOV EAX, [C]
    SHL EAX, 1
    JO ENDMAFFS
    MOV [C], EAX

    ;inc Zahl
    MOV EAX, [Zahl]
    INC EAX
    MOV [Zahl], EAX

    
;    MOV EAX, [Flag]
;    PUSH EAX
;    
;    POPF
    
    JMP QUICKMAFFS
    ENDMAFFS:
    
    xor eax, eax
    ret