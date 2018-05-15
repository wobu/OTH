%include "io.inc"
section .data
pos_zahl DD 0,0,0,0,0,0,0,0,0,0
neg_zahl DD 0,0,0,0,0,0,0,0,0,0
fmt_pos DB "pos_zahl: %d %d %d %d %d %d %d %d %d %d", 10, 0
fmt_neg DB "neg_zahl: %d %d %d %d %d %d %d %d %d %d", 10, 0
steps DD 10
counter DD 0
section .text
global CMAIN
extern printf
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    

    incNumbers:   
    ;PRINT_DEC 4, [counter]
    ;NEWLINE
    
    ;byte counter
    MOV EAX, [counter]
    MOV EBX, 4
    MUL EBX
    
    MOV ECX, EAX
    
        
    ;pos_zahl
    MOV EAX, [counter]
    MOV [pos_zahl+ECX], EAX

    ;inc counter              
    MOV EAX, [counter]
    INC EAX
    MOV [counter], EAX 

    ;neg_zahl
    MOV EAX, [counter]
    MOV EBX, -1
    MUL EBX
    MOV [neg_zahl+ECX], EAX
    
    ;jump condition
    MOV EAX, [steps]
    MOV EBX, [counter]
    CMP EAX, EBX

    JA incNumbers
    
    print_pos:
    MOV [counter], dword 0
    
    MOV EAX, [counter]
    MOV EBX, 4
    MUL EBX
    
    MOV ECX, EAX
    
    MOV EAX, [steps]
    MOV EBX, [counter]
    CMP EAX, EBX
    
    PUSH dword [pos_zahl+ECX]

    JA print_pos
    push fmt_pos
    call printf
    
    mov esp, ebp
    
    print_neg:
    MOV [counter], dword 0
    
    MOV EAX, [counter]
    MOV EBX, 4
    MUL EBX
    
    MOV ECX, EAX
    
    MOV EAX, [steps]
    MOV EBX, [counter]
    CMP EAX, EBX
    
    PUSH dword [neg_zahl+ECX]

    JA print_neg
    push fmt_neg
    ;call printf
    
    mov esp, ebp

    ret