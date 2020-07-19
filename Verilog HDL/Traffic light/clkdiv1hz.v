module clkdiv1hz(iClk50M, oClk);
parameter CntValue = 50000000;  // clock來源的頻率
input         iClk50M;
output reg oClk;
reg [31:0] rCnt;
always@(posedge iClk50M) begin
    if( rCnt >= ((CntValue/(1*2))-1) ) begin
            oClk <= ~ oClk;
            rCnt <= 0;
    end
    else begin
            oClk <= oClk;  
            rCnt <= rCnt + 1;
    end
end
endmodule
