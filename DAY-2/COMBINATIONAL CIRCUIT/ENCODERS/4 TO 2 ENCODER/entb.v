module entb;
reg[3:0] in;
wire[1:0] out;
en uut(.in(in),.out(out));
initial begin
$dumpfile("dc.vcd");
$dumpvars;
$monitor($time,"in=%b,out=%b",in,out);
#5 in = 4'b0001;
#5 in = 4'b0010;
#5 in = 4'b0100;
#5 in = 4'b1000;
end
endmodule
