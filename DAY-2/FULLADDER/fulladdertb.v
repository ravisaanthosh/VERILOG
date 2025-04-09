module fulladdertb;
reg a;
reg b;
reg carry;
wire sum;
wire out;
fulladder uut(.a(a),.b(b),.carry(carry),.sum(sum),.out(out));
initial begin
$dumpfile("fulladdertb.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,carryin=%b,sum=%b,carryout=%b",a,b,carry,sum,out);


a=0; b=0; carry=0;  //if we run direct delay time, output we be x in 1st initial line
#5 a=0; b=0; carry=0;
#5 a=0; b=0; carry=1;
#5 a=0; b=1; carry=0;
#5 a=1; b=1; carry=1;
#5 a=1; b=0; carry=0;
#5 a=1; b=0; carry=1;
#5 a=1; b=1; carry=0;
#5 a=1; b=1; carry=1;
#5;


$finish();
end
endmodule
