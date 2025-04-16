module op(input a,b,c,output e);
  always @(a or b or c or p);
  assign o=(a^b^c^p);
endmodule
