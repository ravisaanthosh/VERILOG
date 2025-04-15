Data flow model
module halfsub(input a,b,output df,bw);
assign df=(a^b);
assign bw=~(a)&b;
endmodule

structural model
module halfsub(input a,b,output df,bw);
xor g0(df, a, b);
  and g1(ndot, ~a, b);  //actual formula 'ab so its represent in temp signal like ndot ,~a,b after to assign bw=ndot; note only indertimine mingle gate values only
assign bw = ndot;
endmodule

behavioral model
module halfsub(input a,b,output df,bw);
always @(a or b);
assign df=(a^b);
assign bw=~(a)&b;
endmodule
