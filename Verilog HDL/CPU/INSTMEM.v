module   INSTMEM(iAddr, oInst); //指令記憶體
	input     [3:0]iAddr;
	output    [7:0]oInst; //指令代碼
	reg       [7:0]Rom;
	
	always @(iAddr) begin
		case(iAddr) //分別列出各個指令代碼
			4'b0000: Rom = 8'b01100000; //LDA
			4'b0001: Rom = 8'b00010000; //COM
			4'b0010: Rom = 8'b00100000; //SHR
			4'b0011: Rom = 8'b00110000; //CSL
			4'b0100: Rom = 8'b00000000; //CLA
			4'b0101: Rom = 8'b01000001; //ADD
			4'b0110: Rom = 8'b01000010; //STA
			4'b0111: Rom = 8'b11110000; //STP
		endcase
	end
	assign oInst = Rom;
endmodule

