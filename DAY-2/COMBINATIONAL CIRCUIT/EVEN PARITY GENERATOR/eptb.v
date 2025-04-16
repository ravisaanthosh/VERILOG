module epgtb;
reg a,b,c;
wire p;
epg h(.a(a),.b(b),.c(c),.p(p));
initial begin
$dumpfile("pg.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,c=%b,p=%b",a,b,c,p);
a=0;b=0;c=0;
#5a=0; b=0; c=0;
#5a=0; b=0; c=1;
#5a=0; b=1; c=0;
#5a=0; b=1; c=1;
#5a=1; b=0; c=1;
#5a=1; b=0; c=0;
#5a=1; b=1; c=1;
#5a=1; b=1; c=0;
end
endmodule
