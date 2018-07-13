%include "io.inc"
section .data
input times 32 db 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    GET_DEC 4, [input]
    
    mov eax,[input]; input
    mov ebx, eax; input temp
    mov ecx, eax; col
    mov edx, ebx; row
    
    cmp byte [input], 0
    je done
    call output1
    
    
output1:
    call printstar
    dec ebx
    cmp ebx,0
    jg output1
    jle nro1
    
nro1:
    NEWLINE
    ;new row for output1
    cmp edx, eax
    dec edx
    jl output1
    mov ebx,eax
    jg output1
    

newoutput:
NEWLINE
PRINT_STRING "DONT GO HERE YET"
    NEWLINE
    mov eax,[input]; input
    mov ebx, eax; input temp
    mov ecx, eax; col
    mov edx, ebx; row
  
    

printstar:
    PRINT_STRING "*"
    ret

printspace:
    PRINT_STRING " "
    ret    
    
    
done:    
    ret