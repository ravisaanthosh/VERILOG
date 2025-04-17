module muxtb;
reg s0,s1,a0,a1,a2,a3;
wire y;
mux h(.s0(s0),.s1(s1),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.y(y));
initial begin
$dumpfile("mux.vcd");
$dumpvars;
$monitor($time,"s0=%b,s1=%b,a0=%b,a1=%b,a2=%b,a3=%b,y=%b",s0,s1,a0,a1,a2,a3,y);
s1=1;s0=0;a0=0;a1=0;a2=1;a3=0;
#5s1=1;s0=0;a0=0;a1=0;a2=1;a3=1;
end
endmodule
