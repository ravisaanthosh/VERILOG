module mux(input s0,s1,a0,a1,a2,a3,output y);
assign y= s0?(s1? a3:a1):(s1? a2:a0);
endmodule
