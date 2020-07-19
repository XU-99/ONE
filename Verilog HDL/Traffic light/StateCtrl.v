module StateCtrl(	
							iClk1Hz, 
							iRst_n, 
						/* export signals */
							oCounter,
							oGreen, 
							oYellow, 
							oRed
					 );
input						iClk1Hz;  /* 1Hz clock*/
input						iRst_n; 	 /* reset signal */

output  reg     [3:0]oCounter; /* counter value */
output  reg			   oGreen;	 /* Green Led signal */
output  reg			   oYellow;  /* Yellow Led signal */
output  reg			   oRed;     /* Red Led signal */

//reg	[1:0]          rCounter;
reg	[1:0]          rState;

always@(posedge iClk1Hz or negedge iRst_n) begin
    if(!iRst_n) begin
	     oCounter <= 5;
		  rState <= 0;
		  oGreen <= 0;  
		  oYellow <= 0;	  
		  oRed <= 0;
	 end else begin
		  oGreen <= oGreen;  
		  oYellow <= oYellow;	  
		  oRed <= oRed;
		  case(rState)
		      0: begin /* show green */
					 oGreen <= 1;
					 oYellow <= 0;
					 oRed <= 0;
                if(oCounter == 0) begin
					     oCounter <= 4; /* set count time */
			           rState <= 1; /* jump to yellow state */		 
					 end else begin
				 	     oCounter <= oCounter - 1;
					     rState <= rState;
					 end
				end
				1: begin
					 oYellow <= 1;
					 oRed <= 0;
					 oGreen <= 0;
                if(oCounter == 0) begin
					     oCounter <= 3; /* set count time */
			           rState <= 2;	/* jump to red state */	 
					 end else begin
				 	     oCounter <= oCounter - 1;
					     rState <= rState;
					 end				
				end
				2: begin
				    oRed <= 1;	
					 oGreen <= 0;	
					 oYellow <= 0;
                if(oCounter == 0) begin
					     oCounter <= 5; /* set count time */
			           rState <= 0; /* jump to green state */
					 end else begin
				 	     oCounter <= oCounter - 1;
					     rState <= rState;
					 end				
				end
		  endcase
	 end
end

endmodule
