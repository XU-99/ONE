TITLE 印正方形 最後一個數字是1   

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

    	mov     ecx,var2
L2:
		mov     var1,ecx
		mov     ecx,var2
L1:
		cmp     ecx,1  ;比較ecx是否為1
		jnz     Out_0  ;不等於1時
		
Out_1:
		mov     eax,1  ;ecx==1 顯示數字1
		call    WriteDec
		jmp     L1_END
		
Out_0:
		mov     eax,0  ;ecx！=1 顯示數字0
		call    WriteDec
		
L1_END:
		loop    L1
		
		call    Crlf
		
		mov     ecx,var1
		loop    L2
		
		call    Waitmsg
		call    Crlf
		exit
main ENDP

END main