module dfftb;
reg d,clk,rs;
wire q,qb;
dff uut(d,clk,rs,q,qb);
initial begin
$dumpfile ("d.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
#10 d=0; rs=1; rs=0; #15;
$display($time,"d=%b,clk=%b,rs=%b,q=%b,qb=%b",d,clk,rs,q,qb); #5
#15 d=1; #18;
$display($time,"d=%b,clk=%b,rs=%b,q=%b,qb=%b",d,clk,rs,q,qb); #10
#80;
$finish;
end
endmodule
