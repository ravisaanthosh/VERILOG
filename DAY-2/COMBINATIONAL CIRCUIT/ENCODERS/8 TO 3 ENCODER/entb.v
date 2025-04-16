module entb;
reg[7:0] in;
wire[2:0] out;
en uut(.in(in),.out(out));
initial begin
$dumpfile("dc.vcd");
$dumpvars;
$monitor($time,"in=%b,out=%b",in,out);
#5 in = 8'b000001;
#5 in = 8'b000010;
#5 in = 8'b000100;
#5 in = 8'b101000;
#5 in = 8'b100000;
#5 in = 8'b100000;
#5 in = 8'b100000;
#5 in = 8'b100000;
end
endmodule
