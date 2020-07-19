module CPU(iclk, irst);
	input      iclk, irst;
	wire       rStop, rAccwr, rDatawr;
	wire  [3:0]rOP; 
	wire  [3:0]rAddr;
	wire  [7:0]rInst, rIn1, rIn2, rZ;

//整合連接CPU各個部分
	
	PC(
		.iClk(iclk), .iReset(irst), .iStop(rStop), 
		.oAddress(rAddr)
	);
	
	INSTMEM(
		.iAddr(rAddr),
		.oInst(rInst)
	);
	
	ACC(
		.iClk(iclk), .iWR(rAccwr), 
		.iData(rZ), 
		.oData(rIn1) 
	);
	
	DATAMEM(
		.iClk(iclk), .iWR(rDatawr), .iAddr(rInst[3:0]), 
		.iData(rZ), 
		.oData(rIn2)
	);
	
	COT(
		.iInst(rInst[7:4]), 
		.oStop(rStop), .oAccwr(rAccwr), .oDatawr(rDatawr), 
		.oOP(rOP)
	);
	
	ALU(
		.iOP(rOP), .iIN1(rIn1), .iIN2(rIn2), 
		.oZ(rZ) 
	);

endmodule
