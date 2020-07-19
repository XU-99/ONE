module DATAMEM(iClk, iWR, iAddr, iData, oData);
	input           iClk, iWR;
	input      [3:0]iAddr;
	input      [7:0]iData;
	output     [7:0]oData;
	reg        [7:0]Ram[4'b1111:0];
	
	assign oData = Ram[iAddr]; //輸出資料
	
	initial begin
		Ram[0] = 8'b00000010; //初始化為2
		Ram[1] = 8'b10000000; //最高位初始化為1
	end
	
	always@(negedge iClk) begin
		if(iWR == 1) begin
			Ram[iAddr] = iData; //當讀寫指令為1時輸入資料
		end
	end
endmodule
