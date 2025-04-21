module bgtb;
reg [3:0] b;
wire [3:0] g;
bg uut(.b(b),.g(g));
initial begin
$dumpfile("bg.vcd");
$dumpvars;
$monitor($time,"b=%b,g=%b",b,g);
b=4'b0000;
#5 b=4'b0001;
#5 b=4'b0010;
#5 b=4'b0011;
#5 b=4'b0100;
#5 b=4'b0101;
#5 b=4'b0110;
#5 b=4'b0111;
#5 b=4'b1000;
#5 b=4'b1001;
#5 b=4'b1010;
#5 b=4'b1011;
#5 b=4'b1100;
#5 b=4'b1101;
#5 b=4'b1110;
#5 b=4'b1111;
end
endmodule
