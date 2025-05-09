module seqtb;
reg x,rst,clk;
wire z;
seq uut(x,rst,clk,z);
initial clk=0;
always #5 clk=~clk;

initial begin
$monitor($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

$dumpfile("1111.vcd");
$dumpvars;

x=1;
#1 rst=0;
#2 rst=1;

#4 x=1;

#4 x=1; 

#4 x=1; 

#4 x=1;  

#50
$finish;
end
end
