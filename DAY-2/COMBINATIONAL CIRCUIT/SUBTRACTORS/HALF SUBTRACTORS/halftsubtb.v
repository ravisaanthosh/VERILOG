module halfsubtb;
reg a,b;
wire df,bw;
halfsub v(.a(a),.b(b),.df(df),.bw(bw));
initial begin
$dumpfile("hatb.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,df=%b,bw=%b",a,b,df,bw);
a=0;b=0;
#5a=0;b=0;
#5a=0;b=1;
#5a=1;b=0;
#5a=1;b=1;
end
endmodule
