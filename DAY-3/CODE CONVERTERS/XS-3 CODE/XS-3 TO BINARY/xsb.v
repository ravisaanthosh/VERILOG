//XS-3 TO BCD CONVERTER
module xs(input [3:0] XS,output reg[3:0] BCD);
always @ (*) begin
            case (BCD)
4'b0011: BCD = 4'b0000;
            4'b0100: BCD = 4'b0001;
            4'b0101: BCD = 4'b0010;
            4'b0110: BCD = 4'b0011;
            4'b0111: BCD = 4'b0100;
            4'b1000: BCD = 4'b0101;
            4'b1001: BCD = 4'b0110;
            4'b1010: BCD = 4'b0111;
            4'b1011: BCD = 4'b1000;
            4'b1100: BCD = 4'b1001;
            default: BCD = 4'bxxxx;
endcase
end
endmodule
