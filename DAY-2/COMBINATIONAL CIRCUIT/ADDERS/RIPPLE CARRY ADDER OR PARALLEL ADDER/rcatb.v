module rcatb;
reg[3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
rca uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("rca.vcd");
$dumpvars;
$monitor($time,"a=%d,b=%d,cin=%d,sum=%d,cout=%d",a,b,cin,sum,cout);
#0a=4'b1111; b=4'b1111; cin=0;
#15 a=4'b1111; b=4'b0110; cin=0;
end
endmodule
