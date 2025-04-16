module dc3to8tb;
reg [2:0] in;
reg en;
wire [7:0] out;
dc3to8 h(.in(in),.en(en),.out(out));
initial begin
$dumpfile("dc.vcd");
$dumpvars;
$monitor($time,"in=%b,en=%b,out=%b",in,en,out);
 en=0; in=3'b000;
#5 en=0; in=3'b000;
#5 en=1; in=3'b001;
#5 en=1; in=3'b010;
#5 en=1; in=3'b011;
#5 en=1; in=3'b100;
#5 en=1; in=3'b101;
#5 en=1; in=3'b110;
#5 en=1; in=3'b111;
end
endmodule
