TITLE 判斷式   

INCLUDE Irvine32.inc
.data
		Max    byte  0
		Min    byte  0
		ads_A  dword ?
		ads_B  dword ?
		
		arrayA byte  1,3,5,7,9
		arrayB byte  8,6,4,2,0
		arrayC byte  5 dup(0)
		
.code
main PROC
		call   Clrscr
		call   Dmem
		call   Waitmsg
		
		mov    esi,offset arrayA
		mov    ads_A,esi
		
		mov    esi,offset arrayB
		mov    ads_B,esi
		
		mov    eax,0
		mov    ebx,0
		mov    ecx,5
		mov    esi,0
		
L1: 
		mov    al,[arrayA+esi]
		mov    bl,[arrayB+esi]
		cmp    al,bl
		
		jc     BtoC
		jnc    AtoC
		
BtoC:
		call   dumpregs
		call   Waitmsg
		mov    [arrayC+esi],bl
		jmp    L1_END
		
AtoC:
		call   dumpregs
		call   Waitmsg
		mov    [arrayC+esi],al
		jmp    L1_END
		
L1_END:
		inc    esi
		call   Dmem
		call   Waitmsg
		loop   L1
		exit
		
main ENDP

Dmem PROC
.data
		
		tmp_c  dword  ?
		tmp_s  dword  ?
		tmp_b  dword  ?
.code
		mov    tmp_c,ecx
		mov    tmp_s,esi
		mov    tmp_b,ebx
		
		mov    esi,offset  arrayA
		mov    ebx,1
		mov    ecx,sizeof  arrayA
		add    ecx,sizeof  arrayB
		add    ecx,sizeof  arrayC
		call   dumpmem
		
		mov    ecx,tmp_c
		mov    esi,tmp_s
		mov    ebx,tmp_b
		ret
Dmem ENDP

END main
