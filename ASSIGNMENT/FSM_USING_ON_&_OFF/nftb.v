module jktb;
reg clk, rs, j, k;
wire out;
jk uut(clk,rs,j,k,out);
always #5 clk = ~clk;
initial begin
clk = 0; rs = 1; j = 0; k = 0;
#10 rs = 0;      
#10 j = 0; k = 0;
#10 j = 1; k = 0;
#10 j = 0; k = 0;
#10 j = 0; k = 1;
#10 j = 1; k = 0;
#10 j = 0; k = 0;
#10 k = 1;
#10 $finish;
end
initial begin
$dumpfile("onoff.vcd");
$dumpvars;
$monitor($time,"clk=%b,rs=%b,j=%b,k=%b,out=%b",clk,rs,j,k,out);
end
endmodule

