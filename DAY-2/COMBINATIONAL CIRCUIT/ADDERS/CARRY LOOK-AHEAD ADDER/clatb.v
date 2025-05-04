module clatb;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
cla uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("cla.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
a=4'b0000; b=4'b0000; cin=0;
#10 a=4'b1111; b=4'b1111; cin=0;
#15 a=4'b0001; b=4'b0001; cin=0;
#50 $finish;
end
endmodule
