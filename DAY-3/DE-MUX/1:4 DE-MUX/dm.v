module demux(input s0,s1,i,output y0,y1,y2,y3);
assign {y3,y2,y1,y0}=s0 ? (s1 ? {i,3'b000} : {1'b0,i,2'b00}) :(s1 ? {2'b00,i,1'b0} : {3'b000,i});
endmodule
