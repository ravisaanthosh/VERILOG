module jkmstb;
reg j,k,clk;
wire sq,sqb;
jkms uut(.j(j),.k(k),.clk(clk),.msq(sq),.msqb(sqb));
initial begin
$dumpfile ("jkms.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5clk=~clk;
end
initial begin
#10 j=0; k=0;  #25;
$display($time,"j=%b,k=%b,sq=%b,sqb=%b",j,k,sq,sqb);
#20 j=0; k=1;  #35;
$display($time,"j=%b,k=%b,sq=%b,sqb=%b",j,k,sq,sqb);
#30 j=1; k=0;  #45;
$display($time,"j=%b,k=%b,sq=%b,sqb=%b",j,k,sq,sqb);
#40 j=1; k=1;  #25;
$display($time,"j=%b,k=%b,sq=%b,sqb=%b",j,k,sq,sqb);
#95;
$finish;
end
endmodule
