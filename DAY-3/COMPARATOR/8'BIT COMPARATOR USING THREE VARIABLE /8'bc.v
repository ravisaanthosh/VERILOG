Two variable
module comp(input [7:0] a,b,output aeb,agb,alb);
assign aeb=(a==b);
assign agb=(a>b);
assign alb=(a<b);
endmodule

Three variable
module comp(input [7:0] a,b,c,output aeb,agb,alb);
assign aeb= ((a==b) && (a ==c ) && (b == c));
assign agb=(a>b>c);
assign alb=(a<b<c);
endmodule
