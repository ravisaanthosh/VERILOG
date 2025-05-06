module alu(input [15:0]a,b,input [3:0]alu_in,output reg[15:0] alu_out);
always @ (*) begin
case ({alu_in})
4'b0000 : alu_out = a+b; //add for addition kindly add one bit extra for carry in addition operation only
4'b0001 : alu_out = a-b; //sub
4'b0010 : alu_out = a*b; //multiply
4'b0011 : alu_out = a/b; //divide
4'b0100 : alu_out = a<<1; // left shif
4'b0101 : alu_out = a>>1; // right shift
4'b0110 : alu_out = {a[6:0],a[7]}; //rotate right
4'b0111 : alu_out = {a[0],a[7:1]}; //rotate left
4'b1001 : alu_out = a&b; // and
4'b1010 : alu_out = a|b; // or
4'b1011 : alu_out = a^b; //  ex or
4'b1100 : alu_out = ~(a&b); // nand
4'b1101 : alu_out = ~(a^b); // ex nor
4'b1110 : alu_out = (a>b); //  greater than
4'b1111 : alu_out = (a<b); // less than
default : alu_out=15'bx;
endcase
end
endmodule


