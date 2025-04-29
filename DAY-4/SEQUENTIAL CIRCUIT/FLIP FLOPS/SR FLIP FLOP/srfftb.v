module srtb;
reg s,r,clk,rs;
wire q,qb;
srff uut(.s(s),.r(r),.clk(clk),.rs(rs),.q(q),.qb(qb));
initial begin
//$display($time,"s=%b,r=%b,clk=%b,rs=%b,q=%b,qb=%b",s,r,clk,rs,q,qb);
$dumpfile("sr.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
#10 s=0; r=0; rs=1; #10 rs = 0;
$display($time,"s=%b,r=%b,rs=%b,q=%b,qb=%b",s,r,rs,q,qb);
#10 s=0; r=0; #5; //use to output its capture then display so we add additional #5 
$display($time,"s=%b,r=%b,rs=%b,q=%b,qb=%b",s,r,rs,q,qb);
#10 s=0; r=1; #6; //use to output its capture then display so we add additional #8 
$display($time,"s=%b,r=%b,rs=%b,q=%b,qb=%b",s,r,rs,q,qb);
#10 s=1; r=0; #10; //use to output its capture then display so we add additional #12 
$display($time,"s=%b,r=%b,rs=%b,q=%b,qb=%b",s,r,rs,q,qb);
#10 s=1; r=1;
#18 //use to output its capture then display so we add additional #20
$display($time,"s=%b,r=%b,rs=%b,q=%b,qb=%b",s,r,rs,q,qb);
#80;
$finish;
end
endmodule


