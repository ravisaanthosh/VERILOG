Data flow model
module fullsub(input a,b,cin,output df,bw);
assign df=(a^b^cin);
assign bw=(~a)&cin|(~a)&b|b&cin;
endmodule

structural model
module fullsub(input a,b,cin,output df,bw);
xor g0(df,a,b,cin);
  and g2(san1,~a,cin,~a,b,b,cin); //output will be mismatch fix later
assign bw=san1;
endmodule

behavioral model
module fullsub(input a,b,cin,output df,bw);
always @(a or b or cin);
assign df=(a^b^cin);
assign bw=(~a)&cin|(~a)&b|b&cin;
endmodule

