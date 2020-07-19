TITLE Loop1

INCLUDE Irvine32.inc
.data

        Message byte "please enter a number =",0
        Message3 byte "number = 2",0
        Message4 byte "number = 3",0
        Message5 byte "number = 5",0
        Message6 byte "number = 8",0
        Message7 byte "number = 13",0
        Message8 byte "number = 21",0
        Message9 byte "number = 34",0
        Message10 byte "number = 55 ",0
        
        m byte ?
        n byte ?
        
.code
main PROC
				call Clrscr
        mov edx,offset Message
        call WriteString
        call ReadInt
        mov  m,al
        
        cmp  al,3
        jz   L3 
        cmp  al,4
        jz   L4
        cmp  al,5
        jz   L5
        cmp  al,6
        jz   L6
        cmp  al,7
        jz   L7
        cmp  al,8
        jz   L8
        cmp  al,9
        jz   L9
        cmp  al,10
        jz   L10
       
        
L3:     
        call crlf
        mov edx,offset Message3
        call WriteString
        exit
L4:     
        call crlf
        mov edx,offset Message4
        call WriteString
        exit
L5:   
        call crlf
        mov edx,offset Message5
        call WriteString
        exit
L6:
        call crlf
        mov edx,offset Message6
        call WriteString
        exit
L7:
        call crlf
        mov edx,offset Message7
        call WriteString
        exit
L8:
        call crlf
        mov edx,offset Message8
        call WriteString
        exit
L9:
        call crlf
        mov edx,offset Message9
        call WriteString
        exit
L10:
        call crlf
        mov edx,offset Message10
        call WriteString
        exit

main ENDP
END main

