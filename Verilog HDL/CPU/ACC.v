module   ACC(iClk, iWR, iData, oData ); //累加器
	input            iClk;
	input            iWR; //輸入輸出開關
	input       [7:0]iData;
	output      [7:0]oData;
	
	reg         [7:0]acc;
	
	assign oData = acc ;
	
	initial begin 
		acc = 0;
	end
	
	always @(negedge iClk) begin
		if (iWR == 1) begin
			acc = iData ;
		end
	end
	
endmodule 