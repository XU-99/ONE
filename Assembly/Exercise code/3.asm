

INCLUDE Irvine32.inc
.data

        Message byte "please enter first number = ",0
        Message2 byte "please enter second number = ",0
        Message3 byte "N^M = ",0
        m  byte  ?
        n  byte  ?
        s  byte  0
.code
main PROC
	call Clrscr
        mov edx,offset Message
        call WriteString
        call ReadInt
        mov n,al
        
	call crlf
        mov edx,offset Message2
        call WriteString
        call ReadInt
        mov m,al
        cmp m,1
        jz  Line

        dec m
        mov al,n
        mov ecx,0
        mov cl,m
L1:
        
        mul n
        loop L1
        jmp  Out_0
        
Out_0:
        
        call crlf
        mov edx,offset Message3
        call WriteString
        call WriteDec
        call crlf
        exit
        
Line:
	mov al,n
	jmp Out_0
				
main ENDP
END main
