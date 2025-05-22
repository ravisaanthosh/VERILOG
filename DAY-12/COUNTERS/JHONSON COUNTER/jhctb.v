module rctb;
reg clk,rs;
wire [3:0]q;
rc uut(clk,rs,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$dumpfile("rc.vcd");
$dumpvars;
$monitor("clk=%b,rs=%b,q=%b",clk,rs,q);
#10 rs=0;
#10 rs=1;
repeat (50)begin
end
#70;
$finish;
end
endmodule
