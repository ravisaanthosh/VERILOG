/*port deatials
clk-----> clock
rs-----> reset
wr-----> write
rd-----> read
ad1-----> address 1
ad2-----> address 2
da1-----> data in 1
da2-----> data in 2
do1-----> data out 1
do2-----> data out 2*/



module dpsram(
input clk, rs, wr, rd,input [2:0] ad1, ad2,input [3:0] da1, da2,output reg [3:0] do1, do2);
reg [3:0] ram [7:0];
always @(posedge clk) begin
if (rs == 1) begin
do1 <= 4'b0000;
do2 <= 4'b0000;
end 
else begin
// Port A
if (wr == 1)
ram[ad1] <= da1;  // write to port A
else
do1 <= ram[ad1];      // read from port A
// Port B
if (rd == 1)
ram[ad2] <= da2;      // write to port B
else
do2 <= ram[ad2];      // read from port B
end
end
endmodule

