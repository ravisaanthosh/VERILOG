module gbtb;
reg [3:0] g;
wire [3:0] b;
gb uut(.g(g),.b(b));
initial begin
$dumpfile("gb.vcd");
$dumpvars;
$monitor($time,"g=%b,b=%b",g,b);
g=4'b0000;
#5g=4'b0000;
#5g=4'b0001;
#5g=4'b0011;
#5g=4'b0010;
#5g=4'b0111;
#5g=4'b0110;
#5g=4'b0100;
#5g=4'b0101;
#5g=4'b1111;
#5g=4'b1110;
#5g=4'b1100;
#5g=4'b1101;
#5g=4'b1000;
#5g=4'b1001;
#5g=4'b1011;
#5g=4'b1010;
end
endmodule

