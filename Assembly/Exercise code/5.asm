TITLE Loop1

INCLUDE Irvine32.inc
.data

        Message byte "please enter first number =",0
        Message2 byte "please enter second number =",0
        Message3 byte "please enter thrid number = ",0
        m byte ?
        n byte ?
        s byte ? 
        Message4 byte "this is a triangle",0
        Message5 byte "this is a euilateral triangle",0
        Message6 byte "this is not a euilateral triangle",0
        Message7 byte "this is not a triangle",0
        Message8 byte "this is a right triangle",0
        Message9 byte "this is not a right triangle",0
        
        
       
        
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
        
				call crlf
        mov edx,offset Message2
        call WriteString
        call ReadInt
        mov s,al
        
        add al,m
        cmp al,n
        jz  Out_3
        jc  Out_3   
        
Sta:              
        mov al,s
        cmp m,al
        jz  L1
        jc  Out_4

      
L1:     
				cmp n,al
				jz  Out_1
				jnz Out_2
Out_1:   
        call crlf
        mov edx,offset Message4
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message5
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message9
        call WriteString
        call crlf
        exit
        
Out_2:   
        call crlf
        mov edx,offset Message4
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message6
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message9
        call WriteString
        call crlf
        exit
        
Out_3:
        call crlf
        mov edx,offset Message7
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message6
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message9
        call WriteString
        call crlf
        exit
        
Out_4:
        call crlf
        mov edx,offset Message4
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message6
        call WriteString
        call crlf
        call crlf
        mov edx,offset Message9
        call WriteString
        call crlf
        exit
        
main ENDP
END main

