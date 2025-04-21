module d(input s,i,output y1,y0);
assign y1=(s&i);
assign y0=(~s&i);
endmodule
