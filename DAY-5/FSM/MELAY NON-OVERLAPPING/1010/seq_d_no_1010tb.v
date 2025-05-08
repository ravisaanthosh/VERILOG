module sqtb;
reg in,clk,rst;
wire out;
sq uut(in,clk,rst,out);
initial clk=0;
always #2 clk=~clk;
initial begin
$dumpfile("1010.vcd");
$dumpvars;
$monitor($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

in=0;
#10 rst =0; #10 rst=1;

#10 in=1; #10;
//$display ($time,"in=%d,clk=%d,rst=%b,out=%d",in,clk,rst,out);

#10 in=0; #10;
//$display ($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

#10 in=1; #10;
//$display ($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

#10 in=0; #10;
//$display ($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

 #9 in=1; #10;
//$display ($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

#10 in=1; #11;
//$display ($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out); 

#75;
$finish;
end
endmodule
