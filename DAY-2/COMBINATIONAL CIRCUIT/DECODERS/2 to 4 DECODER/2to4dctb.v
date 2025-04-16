module dc2to4tb;
reg [1:0] in;
reg en;
wire [3:0] out;
dc2to4 h(.in(in),.en(en),.out(out));
initial begin
$dumpfile("dc.vcd");
$dumpvars;
$monitor($time,"in=%b,en=%b,out=%b",in,en,out);
#5 en=0; in=2'b00;
#5 en=1; in=2'b00;
#5 en=1; in=2'b01;
#5 en=1; in=2'b10;
#5 en=1; in=2'b11;
end
endmodule
