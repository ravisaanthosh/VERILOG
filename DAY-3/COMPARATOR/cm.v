Behavioral model
module comp(input [1:0] a,b,output reg a_eq_b,a_gr_b,a_ls_b);
always @ (*) begin
//to assign initial values i will take "0" for initial else the output will detrtmine shows in "xxx"
a_eq_b=0;
a_gr_b=0;
a_ls_b=0;
if (a==b)
a_eq_b =1;
else if (a<b)
a_ls_b=1;
else
a_gr_b=1;
end
endmodule

Data flow model
module comp(input [1:0] a,b,output a_eq_b,a_gr_b,a_ls_b);
assign a_eq_b = ~a & ~b | a & b;
assign a_gr_b = a & ~b;
assign a_ls_b = ~a & b;
endmodule


To condition operator
module comp(input [1:0] a,b,output a_eq_b,a_gr_b,a_ls_b);
assign a_eq_b = a==b;
assign a_gr_b = a>b;
assign a_ls_b = a<b;
endmodule
