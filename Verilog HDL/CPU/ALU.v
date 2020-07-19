module ALU(iOP, iIN1, iIN2, oZ );
	input      [3:0]iOP;
	input      [7:0]iIN1,iIN2;
	output reg [7:0]oZ;

	initial begin //初始化設置oZ為零
		oZ = 0 ;
	end
	
	always@* begin
		case(iOP) 
			4'b0000: oZ = 0; //CLA
			4'b0001: oZ = ~iIN1; //COM
			4'b0010: oZ = iIN1[7] == 1 ?{1'b1, iIN1[7:1]} : {1'b0, iIN1[7:1]}; //SHR 
			4'b0011: oZ = {iIN1[6:0], iIN1[7]}; //CSL
			4'b0100: oZ = iIN1 + iIN2; //ADD
			4'b0101: oZ = iIN1; //STA 
			4'b0110: oZ = iIN2; //LDA
			4'b1111: oZ = 0;
		endcase
	end	

endmodule

