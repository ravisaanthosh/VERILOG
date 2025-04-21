module d(input s,i,output y1,y0);
assign y1=(s&i);
assign y0=(~s&i);
endmodule

concatenation method
module d(input s,i,output y1,y0);
assign {y1,y0}=s?{1'b0,i}:{i,1'b0};
endmodule
