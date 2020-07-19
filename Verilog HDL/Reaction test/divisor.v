module divisor(iCLK,oDivisor_Clk);
		input iCLK;
		output reg oDivisor_Clk;
		reg [31:0] counter;
		
always@(posedge iCLK) begin
if(counter < 25000000) begin	            //1 Hz除頻器
	counter  <= counter  +  1;		//加法器
	 oDivisor_Clk <= oDivisor_Clk ;	//閂鎖器
end
else begin
	 counter  <= 0;
	 oDivisor_Clk <= ~oDivisor_Clk ;	//經過not 邏輯閘進行反向
end
end
endmodule 