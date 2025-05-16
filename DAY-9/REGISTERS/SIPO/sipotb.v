module sipotb;
reg si,clk,rs;
wire [3:0] po;
sipo uut(si,clk,rs,po);
initial begin
clk=1;
$dumpfile("sipo.vcd");
$dumpvars;
$monitor($time,"si=%b,clk=%b,rs=%b,po=%b",si,clk,rs,po);

forever #5 clk=~clk;
end
initial begin
rs=1;
rs=0;
//serial in parallel out require only n no of input and n no of clk pules only dont required in (2n-1) formula here....!
si=1;#10
si=1;#10
si=1;#10
si=0;#10
$finish;
end
endmodule
