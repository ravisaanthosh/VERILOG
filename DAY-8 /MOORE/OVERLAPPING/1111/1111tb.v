module sqtb;
reg in,clk,rst;
wire out;
sq uut(in,clk,rst,out);
initial clk=0;
always #2 clk=~clk;
initial begin
$dumpfile("1111.vcd");
$dumpvars;
$monitor($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

in=0;
#1 rst =0; #2 rst=1;

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;


 

#15;
$finish;
end
endmodule
