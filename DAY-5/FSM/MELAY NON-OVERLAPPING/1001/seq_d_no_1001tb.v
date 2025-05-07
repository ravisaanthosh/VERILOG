module seqtb;
reg x,rst,clk;
wire z;
seq uut(x,rst,clk,z);
initial clk=0;
always #2 clk=~clk;

initial begin
$dumpfile("1001.vcd");
$dumpvars;

x=1;
#1 rst=0;
#2 rst=1;

#3 x=1; #4;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

#4 x=0; #5;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

#5 x=1; #6;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

#6 x=0; #7;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

#7 x=1; #8;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);


#8 x=0; #10;
$display($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

#100
$finish;
end
endmodule
