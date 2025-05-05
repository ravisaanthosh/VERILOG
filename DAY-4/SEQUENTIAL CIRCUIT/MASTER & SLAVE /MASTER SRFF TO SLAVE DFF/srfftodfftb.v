module srdfftb;
reg s,r,clk;
wire qm,qbm;
srff uut(.s(s),.r(r),.clk(clk),.qs(qm),.qbs(qbm));
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
#5s=0; r=0; #10;
$display ($time,"s=%b,r=%b,clk=%b,qs=%b,qbs=%b",s,r,clk,qm,qbm);

#15 s=0; r=1; #25;
$display ($time,"s=%b,r=%b,clk=%b,qs=%b,qbs=%b",s,r,clk,qm,qbm);

#30 s=1; r=0; #35;
$display ($time,"s=%b,r=%b,clk=%b,qs=%b,qbs=%b",s,r,clk,qm,qbm);

#40 s=0; r=1; #45;
$display ($time,"s=%b,r=%b,clk=%b,qs=%b,qbs=%b",s,r,clk,qm,qbm);

#50 s=1; r=1; #55;
$display ($time,"s=%b,r=%b,clk=%b,qs=%b,qbs=%b",s,r,clk,qm,qbm);

#65 $finish;
end
endmodule
