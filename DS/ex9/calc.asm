%include "io.inc"
section .data
Op DB '+'
Num1 DD 0
Num2 DD 0
InputCounter DD 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax 
    getinput:
    mov ecx, [InputCounter]
    
    cmp ecx, 0
    je getOp
    
    cmp ecx, 1
    je getNum1
    
    cmp ecx, 2
    je getNum2
    
    cmp ecx, 3
    je calc

    
    getOp:
;    PRINT_STRING "Enter Op (+, -, \, *, %): "
    GET_CHAR Op
        
    inc ecx
    mov [InputCounter], ecx
    
    jmp getinput
    
    getNum1:
;   PRINT_STRING "Number1: "
    GET_DEC 4, Num1
        
    inc ecx
    mov [InputCounter], ecx
    
    jmp getinput
    
    getNum2:
;    PRINT_STRING "Number2: "
    GET_DEC 4, Num2
        
    inc ecx
    mov [InputCounter], ecx    
     
    jmp getinput
    
    calc:
    PRINT_CHAR Op
    NEWLINE
    PRINT_DEC 4, Num1
    NEWLINE
    PRINT_DEC 4, Num2
    NEWLINE
    
    ; use 8 bit register for comparing with 8 bit char
    mov al, [Op]
    
    cmp al, '+'
    je doAdd
    
    cmp al, '-'
    je doSub
    
    cmp al, '\'
    je div
    
    cmp al, '*'
    je mul
    
    cmp al, '%'
    je mod
    
    doAdd:    
    mov eax, [Num1]
    add eax, [Num2]
    PRINT_STRING "Result: "
    PRINT_DEC 4, eax
    jmp end
    
    doSub:
    mov eax, [Num1]
    sub eax, [Num2]
    PRINT_STRING "Result: "
    PRINT_DEC 4, eax
    jmp end
    
    div:
    ; TODO
    jmp end
    
    mul:
    ; TODO
    jmp end
    
    mod:    
    ; TODO
    jmp end
    
    end:
    
    ret