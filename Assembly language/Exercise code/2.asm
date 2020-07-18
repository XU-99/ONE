TITLE Loop1

INCLUDE Irvine32.inc
.data

        Message  byte "please enter first number =",0
        Message2 byte "please enter second number =",0
        m        byte ?
        n        byte ?
.code
main PROC
				call Clrscr
        mov edx,offset Message
        call WriteString
        call ReadInt
        mov m,al
        
				call crlf
        mov edx,offset Message2
        call WriteString
        call ReadInt
        mov n,al
        
        mov cl,n
        mov eax,0
        mov ebx,0
        
L1:
        
        add al,cl
        add ebx,2
        add al,bl
        cmp cl,m
        jz  L2
        loop L1
        
        
L2:
        mov ecx,eax
        call dumpregs
        exit
main ENDP
END main

