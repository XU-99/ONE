module State(	
							iClk, 
							iRst,
							iSW,
							iStop,
							oTime,
							oLed
					 );
input						iClk;    /* 1Hz clock*/
input						iRst; 	/* reset signal */
input           [9:0]iSW;
input                iStop;

output  reg 	 [3:0]oTime;
output  reg			   oLed;   

reg	[9:0]          rCounter;
reg   [3:0]          rCnt;
reg   [1:0]				rState;

always@(posedge iClk or negedge iRst) begin
    if(!iRst) begin
	     rCounter <= iSW;
		  rCnt <= 0;
		  rState <= 0;
		  oLed <= 0;
	 end 
	 else begin
		  oLed <= oLed;
		  case(rState)
		      0: begin 
                if(rCounter == 0) begin
					     rCnt <= 0; 
						  oLed <= 1;
			           rState <= 1; 		 
					 end 
					 else begin
				 	     rCounter <= rCounter - 1;
					     rState <= rState;
					 end
				end
				1: begin
					 oLed <= 1;
                if(iStop == 1) begin
					     oTime <= rCnt;
						  rState <= 2;
					 end 
					 else begin
				 	     rCnt <= rCnt + 1;
					     rState <= rState;
					 end				
				end
				default: begin
					 oLed <= 0;
				end
		  endcase
	 end
end

endmodule
