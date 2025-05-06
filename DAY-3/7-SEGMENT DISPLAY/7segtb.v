module segtb;
reg[3:0] bcd;
wire[6:0] out;
integer i;
seg uut(.bcd(bcd),.out(out));
initial begin
$monitor($time,"bcd=%b,out=%b",bcd,out);
for (i=0; i<16; i=i+1) begin
bcd=i;
#10;
end
end
endmodule
