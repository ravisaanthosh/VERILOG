module usrtb;
reg sr,sl,clk,rs;
reg [1:0]sel;
reg [3:0] pin;
wire [3:0] pout;

usr uut(sr,sl,clk,rs,sel,pin,pout);
initial begin
clk=1;
$dumpfile("usr.vcd");
$dumpvars;
$monitor($time,"sr=%b,sl=%b,clk=%b,rs=%b,sel=%b,pin=%b,pout=%b",sr,sl,clk,rs,sel,pin,pout);
forever #5 clk=~clk;
end
initial begin
rs=1; #10 rs=0;
sr=2'b01;
pin=4'b1111;
sel=2'b01; #10

sl=2'b10;
pin=4'b0111;
sel=2'b10; #10

pin=4'b1110;
sel= 2'b11; 
$finish;
end
endmodule
