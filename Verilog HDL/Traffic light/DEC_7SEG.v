module DEC_7SEG(iHex_digit, oHEX);
input [3:0] iHex_digit;
output [6:0] oHEX;
reg [6:0] segment_data;
always @(iHex_digit)
/* Case statement implements a logic truth table using gates*/
 case (iHex_digit)
        4'b 0000: segment_data = 7'b 0111111; // 0 
        4'b 0001: segment_data = 7'b 0000110; // 1
        4'b 0010: segment_data = 7'b 1011011; // 2
        4'b 0011: segment_data = 7'b 1001111; // 3
        4'b 0100: segment_data = 7'b 1100110; // 4
        4'b 0101: segment_data = 7'b 1101101; // 5
        4'b 0110: segment_data = 7'b 1111101; // 6
        4'b 0111: segment_data = 7'b 0000111; // 7
        4'b 1000: segment_data = 7'b 1111111; // 8
        4'b 1001: segment_data = 7'b 1101111; // 9
        4'b 1010: segment_data = 7'b 1110111; // A
        4'b 1011: segment_data = 7'b 1111100; // B
        4'b 1100: segment_data = 7'b 0111001; // C
        4'b 1101: segment_data = 7'b 1011110; // D
        4'b 1110: segment_data = 7'b 1111001; // E
        4'b 1111: segment_data = 7'b 1110001; // F
        default: segment_data = 7'b 0111110;
endcase
/* extract segment data bits and invert */
/* LED driver circuit is inverted */
assign oHEX  = segment_data;
endmodule
