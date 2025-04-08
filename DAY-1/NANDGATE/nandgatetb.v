module
nandgatetb;
reg a,b;
wire y;
 nandgate uut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("nandgatetb.vcd");
$dumpvars(0);
a=1'b0;b=1'b0;
#5a=1'b0;b=1'b1;
#5a=1'b1;b=1'b0;
#5a=1'b1;b=1'b1;
#5$finish;
end
always @(y)
$display("time=%0t\tINPUT VALUES:\t a=%b b=%b\t output value y =%b",$time,a,b,y);
endmodule
