module fullsubtb;
reg a,b,cin;
wire df,bw;
fullsub u(.a(a),.b(b),.cin(cin),.df(df),.bw(bw));
initial begin
$dumpfile("fs.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,df=%b,bw=%b",a,b,cin,df,bw);
a=0; b=0; cin=0;
#5 a=0; b=0; cin=0;
#5 a=0; b=0; cin=1;
#5 a=0; b=1; cin=0;
#5 a=0; b=1; cin=1;
#5 a=1; b=0; cin=0;
#5 a=1; b=0; cin=1;
#5 a=1; b=1; cin=0;
#5 a=1; b=1; cin=1;
end
endmodule
