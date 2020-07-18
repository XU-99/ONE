TITLE Loop1

INCLUDE Irvine32.inc
.data

        Message byte "please enter first number =",0
        Message2 byte "please enter second number =",0
.code
main PROC
				call Clrscr
        mov edx,offset Message
        call WriteString
        call ReadInt
        mov ecx,eax
        
				call crlf
        mov edx,offset Message2
        call WriteString
        call ReadInt
        mov edx,eax
        
        call dumpregs
        exit
main ENDP
END main


