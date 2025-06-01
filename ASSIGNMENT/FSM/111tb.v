module seqtb;
reg x,rst,clk;
wire z;
seq uut(x,rst,clk,z);
initial clk=0;
always #5 clk=~clk;

initial begin
$monitor($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

$dumpfile("111.vcd");
$dumpvars;


#10 rst=0;

#10 rst=1;


#10 x=1;

#10 x=0;
#10 x=0;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=0;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;







#10
$finish;
end
endmodule
