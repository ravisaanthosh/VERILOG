module dtb;
reg d;
wire q,qb;
d uut(.d(d),.q(q),.qb(qb));
initial begin
$dumpfile("d.vcd");
$dumpvars;
$monitor($time,"d=%b,q=%b,qb=%b",d,q,qb);
d=0;
#5 d=0;
#5 d=1;
end
endmodule
