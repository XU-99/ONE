TITLE   求因數  (factor_code.asm)

INCLUDE Irvine32.inc

.data
      Begin     byte  ?
      Count     byte  0
      Choose    byte  0
      Message1  byte  "Please enter a number between 1 and 100 : ",0
      Message2  byte  "The factor of this number is : ",0
      Message3  byte  "This number is out of range ",0
      Message4  byte  "Please choose enter again or exit: ",0
      Message5  byte  "1.Enter again  2.exit : ",0
      Message6  byte  "This number is a prime number ",0
      Message7  byte  "This number is a composite number  ",0
      Message8  byte  "  ",0
      Message9  byte  "Do you want judge again ? ",0
      Message10 byte  "1.Yes  2.No :",0
      Message11 byte  "This number is not prime number or composite number ",0
      
.code
main PROC
      
      call  Clrscr
Line_start:      
      mov   edx,offset  Message1  ;請使用者輸入一個1到100之間的數字
      call  WriteString
      
      call  ReadInt       ;接收並儲存輸入值
      call  Crlf
      
      cmp   ax,64h        ;比較輸入值和100的大小
      jnz   Line_1        ;輸入值不等於100，需要再次判斷
      jz    Line_main     ;輸入值等於100，進入主程式
      
Line_1:                
      jnc   Line_out      ;輸入值大於100，進入選擇程式
      jc    Line_2        ;輸入值小於100，進入主程式

Line_2:                    
      cmp   ax,1          ;比較輸入值和1的大小
      jnz   Line_3	  ;輸入值不等於1，需要再次判斷
      jz    Line_main     ;輸入值等於1，進入主程式
      
Line_3:                   
      jnc   Line_main     ;輸入值大於1，進入主程式
      jc    Line_out      ;輸入值小於1，進入選擇程式
			
Line_out:
      mov   edx,offset  Message3  ;提示輸入值超出範圍
      call  WriteString
      call  Crlf
      call  Crlf
      mov   edx,offset  Message4  ;請使用者做選擇
      call  WriteString
      call  Crlf
      mov   edx,offset  Message5  
      call  WriteString
      call  ReadInt               ;接收使用者的選擇
      call  Crlf
      cmp   ax,1                  ;判斷使用者的選擇
      jz    Line_start
      jnz   Line_exit

Line_main:                ;因數主程式
      mov   Begin,al
      mov   ecx,64h
      
      mov   edx,offset  Message2  
      call  WriteString
      call  Crlf
      
      mov   count,0       ;計數器歸零
      
Judge:                    ;求因數
      mov   al,Begin      
      mov   ah,00
      mov   bl,cl
      div   bl
      cmp   ah,00	  ;比較餘數是否等於0
      jnz   Line_4        ;餘數不為0時直接跳過，為0則繼續往下判斷
      cmp   al,00	  ;比較商是否為0
      jz    Line_4	  ;商為0時直接跳過，不為0則印出因數
      inc   Count         ;計數因數的個數
      call  WriteDec      ;印出因數
      mov   edx,offset  Message8  ;印空格
      call  WriteString
        
Line_4:			
      Loop  Judge 
      call  Crlf
      jmp   Line_count    ;跳至質數判斷程式 
			
Line_choose:              ;詢問是否再次判斷
      mov   edx,offset  Message9
      call  WriteString
      call  Crlf
      mov   edx,offset  Message10
      call  WriteString
      call  ReadInt
      call  Crlf
      mov   Choose,al
      cmp   Choose,1
      jz    Line_start
					
Line_exit:                ;退出程序
      exit
      
Line_count:
      cmp   Count,2       ;判斷因數個數
      jz    Line_prime
      jc		Line_not
      jmp   Line_composite
  
Line_prime:               ;顯示此數為質數
      mov   edx,offset  Message6
      call  WriteString
      call  Crlf
      call  Crlf
      jmp   Line_choose
      
Line_composite:		  ;顯示此數為合數
      mov   edx,offset  Message7
      call  WriteString
      call  Crlf
      call  Crlf
      jmp   Line_choose
      
Line_not:                 ;當數字為1時，既不是質數也不是合數
      mov   edx,offset  Message11
      call  WriteString
      call  Crlf
      call  Crlf
      jmp   Line_choose
      
main ENDP
END main
