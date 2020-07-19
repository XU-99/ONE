module COT(iInst, oStop, oAccwr, oDatawr, oOP);
	input       [3:0]iInst;
	output  reg      oStop, oAccwr, oDatawr; 
	output  reg [3:0]oOP;
	
	initial begin //初始化設置
		oStop = 0;
		oAccwr = 0;
		oDatawr = 0;
		oOP = 4'b1111;
	end
	
	always @* begin
		case(iInst) //根據指令代碼設定各開關的狀態
			4'b0000: {oStop, oAccwr, oDatawr, oOP} = 8'b00100000; //CLA
			4'b0001: {oStop, oAccwr, oDatawr, oOP} = 8'b00100001; //COM
			4'b0010: {oStop, oAccwr, oDatawr, oOP} = 8'b00100010; //SHR
			4'b0011: {oStop, oAccwr, oDatawr, oOP} = 8'b00100011; //CSL
			4'b0100: {oStop, oAccwr, oDatawr, oOP} = 8'b00100100; //ADD
			4'b0101: {oStop, oAccwr, oDatawr, oOP} = 8'b00010101; //STA
			4'b0110: {oStop, oAccwr, oDatawr, oOP} = 8'b00100110; //LDA
			4'b1111: {oStop, oAccwr, oDatawr, oOP} = 8'b10001111; //STP
		endcase
	end

endmodule 