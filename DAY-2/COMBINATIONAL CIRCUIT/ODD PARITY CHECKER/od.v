module op(input a,b,c,p,output o);
  always @(a or b or c or o);
  assign o=~(a^b^c^p);
endmodule
