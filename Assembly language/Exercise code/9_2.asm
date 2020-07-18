TITLE 印正方形   

INCLUDE Irvine32.inc
.data

		Message	byte	"Enter a number = ",0
		var1	dword ?
		var2    dword ?
		
.code
main PROC
		call  	Clrscr
		call    Crlf
		call    Crlf
		
		mov     edx,offset  Message
		call    WriteString
		call    ReadInt
		mov     var2,eax
		
;顯示正方形

    mov     eax,0
    mov     ecx,var2
L2:
		mov     var1,ecx
		mov     ecx,var2
L1:
		call    WriteDec
		loop    L1
		
		call    Crlf
	  	mov     ecx,var1
	  	loop    L2
	  
	  	exit
	  
main ENDP
END main