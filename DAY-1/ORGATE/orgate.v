Data flow modeling  //Data flow modeling 
module orgate(input a,b, output y);
 assign y=a|b;
 endmodule

structural modeling  //structural modeling
module orgate(input a,b,output y);
or oragte(y,a,b);
endmodule
behavioral modeling  //behavioral modeling 
module orgate(input a,b,output reg y);
always @ (a or b) begin;
y= a|b;
end
endmodule

