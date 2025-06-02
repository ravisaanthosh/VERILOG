module tftb;
reg clk,rs;
wire [2:0]north_light,south_light,east_light,west_light;
tf uut(clk,rs,north_light,south_light,east_light,west_light);
initial begin
$dumpfile("tflight.vcd");
$dumpvars;
$monitor($time,"clk=%b,rs=%b,north_light=%b,south_light=%b,east_light=%b,west_light=%b",clk,rs,north_light,south_light,east_light,west_light);
clk=0;
forever #5 clk=~clk;
end
initial begin
rs=1;
#15 rs=0;
#110 $finish;
end
endmodule
