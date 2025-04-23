module xstb;
reg[3:0] bcd;
wire [3:0] xs;
sx uut(.bcd(bcd),.xs(xs));
initial begin
$dumpfile("xs.tb");
$dumpvars;
$monitor ($time,"bcd=%b,xs=%b",bcd,xs);
bcd=4'b0000;
#5bcd=4'b0001;
#5bcd=4'b0010;
#5bcd=4'b0011;
#5bcd=4'b0100;
#5bcd=4'b0101;
#5bcd=4'b0110;
#5bcd=4'b0111;
#5bcd=4'b1000;
#5bcd=4'b1001;
end
endmodule
