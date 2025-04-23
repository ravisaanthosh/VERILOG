//BCD to XS-3 code
module xs(input [3:0] bcd,output reg[3:0] xs);
always @ (*) begin
case (xs)
4'b0011: xs = 4'b0000;
            4'b0100: xs = 4'b0001;
            4'b0101: xs = 4'b0010;
            4'b0110: xs = 4'b0011;
            4'b0111: xs = 4'b0100;
            4'b1000: xs = 4'b0101;
            4'b1001: xs = 4'b0110;
            4'b1010: xs = 4'b0111;
            4'b1011: xs = 4'b1000;
            4'b1100: xs = 4'b1001;
            default: xs = 4'bxxxx;
endcase
end
endmodule
