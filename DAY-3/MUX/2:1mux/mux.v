Data flow model
module mux(input i0,i1,sel,output y);
assign y= ~sel & i0 | sel & i1;
endmodule

using ternary operator
module mux(input i0,i1,sel,output y);
assign y= sel ? i0:i1;
endmodule

behavioral model
module mux(input i0,i1,sel,output reg y);
always begin @ (sel or i0 or i1);
	if (sel==1)
		y=i1;
	else
		y=i0;
end
endmodule
