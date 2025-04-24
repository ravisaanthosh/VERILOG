module ctb;
reg [1:0] a,b;
wire a_eq_b,a_gr_b,a_ls_b;
comp uut(.a(a),.b(b),.a_eq_b(a_eq_b),.a_gr_b(a_gr_b),.a_ls_b(a_ls_b));
initial begin
$dumpfile ("comp.vcd");
$dumpvars;
$monitor ($time,"a=%b,b=%b,a_eq_b=%b,a_gr_b=%b,a_ls_b=%b",a,b,a_eq_b,a_gr_b,a_ls_b);
a=0;b=0;
#5 a=2'b00; b=2'b00; //a=b
#5 a=2'b01; b=2'b10; //a<b
#5 a=2'b11; b=2'b00; //a>b
end
endmodule
