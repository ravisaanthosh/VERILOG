module Dramtb;
reg clk,rs,wr;
reg[3:0]din;
reg[2:0]add;
wire[3:0]dout;

Dram uut(clk,rs,wr,din,add,dout);
initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
$dumpfile("Dram.vcd");
$dumpvars;
$monitor("clk=%b,rs=%b,wr=%b,din=%b,add=%b,dout=%b",clk,rs,wr,din,add,dout);

//test case for write operation

#0 rs=1;
#30 rs=0;
 wr=1;
#20 add=3'b000; din=4'b0101;
#20 add=3'b001; din=4'b1010;
#20 add=3'b010; din=4'b0011;
#20 add=3'b011; din=4'b1100;
#20 add=3'b100; din=4'b0001;
#20 add=3'b101; din=4'b1000;
#20 add=3'b110; din=4'b1111;
#20 add=3'b111; din=4'b0000;

//test case for read operation

wr=0;

#20 add=3'b000;
#20 add=3'b001;
#20 add=3'b010;
#20 add=3'b011;
#20 add=3'b100;
#20 add=3'b101;
#20 add=3'b110;
#20 add=3'b111;

$finish;
end
endmodule
