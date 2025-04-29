module tfftb;
reg t,clk,rs;
wire q,qb;
tff uut(.t(t),.clk(clk),.rs(rs),.q(q),.qb(qb));
initial begin
$dumpfile("t.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5clk=~clk;
end
initial begin
#10 t=0; rs=1; rs=0; #15;
$display($time,"t=%b,q=%b,qb=%b",t,q,qb); #18;
#20 t=1; #16;
$display($time,"t=%b,q=%b,qb=%b",t,q,qb); #25;
#45;
$finish;
end
endmodule
 
