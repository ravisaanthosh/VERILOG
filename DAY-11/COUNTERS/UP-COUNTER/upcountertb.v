module upcountb;
reg clk,rs;
wire [2:0] count;
upcou uut(clk,rs,count);
initial begin
$dumpfile("upcounter.vcd");
$dumpvars;
$monitor($time,"clk=%b,rs=%b,count=%b",clk,rs,count);
clk=0;
#5 rs=0;

#5 rs=1;

 #80 $finish;
end
always #5 clk=~clk;

endmodule
