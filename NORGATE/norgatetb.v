module norgatetb;
 reg a,b;
 wire y;
norgate uut (.a(a),.b(b),.y(y));
initial begin
$dumpfile ("norgatetb.vcd");
$dumpvars;
a=1'b0;b=1'b0;
$display("time=%90t\tinput values:\t a=%b b=%b\t output value y =%b",$time,a,b,y);
#5a=1'b0;b=1'b1;
$display("time=%90t\tinput values:\t a=%b b=%b\t output value y =%b",$time,a,b,y);
#5a=1'b1;b=1'b0;
$display("time=%90t\tinput values:\t a=%b b=%b\t output value y =%b",$time,a,b,y);
#5a=1'b1;b=1'b1;


//assign y = ~(a|b);
$display("time=%90t\tinput values:\t a=%b b=%b\t output value y =%b",$time,a,b,y);
#5$finish;
end
endmodule
