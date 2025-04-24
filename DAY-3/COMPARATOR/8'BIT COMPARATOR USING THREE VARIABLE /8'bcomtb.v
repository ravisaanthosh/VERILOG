module comptb;
reg [7:0] a,b,c;
wire aeb,agb,alb;
comp uut(.a(a),.b(b),.c(c),.aeb(aeb),.agb(agb),.alb(alb));
initial begin
$dumpfile("comp.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,c=%b,aeb=%b,agb=%b,alb=%b",a,b,c,aeb,agb,alb);
a=8'b00000000;  b=8'b00000000;  c=8'b00000000;
#5a=8'b00000000; b=8'b00000000;  c=8'b00000000;
#5a=8'b11111111; b=8'b0000010;   c=8'b0000000; 
#5a=8'b00000011; b=8'b11111110;  c=8'b11111111;
end
endmodule
