ternary operator
module mux(input s0,s1,a0,a1,a2,a3,output y);
assign y= s0?(s1? a3:a1):(s1? a2:a0);
endmodule
behavioral model
module mux(input s0,s1,a0,a1,a2,a3,output reg y);
always begin @(*)
	if (s0==0 & s1==0)
		y=a0;
	else if (s0==0 & s1==1)
		y=a1;
	else if (s0==1 & s1==0)
		y=a2;
	else
		y=a3;
end
endmodule
