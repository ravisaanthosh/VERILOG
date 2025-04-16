module optb;
reg a,b,c;
wire o;
op h(.a(a),.b(b),.c(c),.o(o));
initial begin
$dumpfile("op.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,c=%b,o=%b",a,b,c,o);
a=0; b=0; c=0;
#5a=0; b=0; c=0;
#5a=0; b=0; c=1;
#5a=0; b=1; c=0;
#5a=0; b=1; c=1;
#5a=1; b=0; c=0;
#5a=1; b=0; c=1;
#5a=1; b=1; c=0;
#5a=1; b=1; c=1;
end
endmodule
