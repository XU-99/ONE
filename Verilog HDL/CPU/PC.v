module    PC(iClk, iReset, iStop, oAddress);

	input              iClk;//時鐘
	input              iReset;//是否重置地址。0-初始化PC，否則接受新地址       
	input              iStop;
	output  reg   [3:0]oAddress; //設定地址為4位元
        
	reg  State;

	initial begin  //初始化設定
		State <= 1;
		oAddress  <= 0;
	end
	
	always @* begin
		if(iStop == 1) begin //如果接收到關機指令則停止
			State <= 0;
		end
	end
	always @(posedge iClk or negedge iReset)  begin  
		if (!iReset) begin  //如果為0則初始化PC，否則接受新地址
			oAddress <= 0;  
		end  
		else begin
			if (State == 1) begin
				oAddress <=  oAddress + 1;
			end
		end  
	end  
endmodule
