Data flow model
module srl(input s,r,output q,qb);
assign q = ~(r | qb);
assign qb = ~( s | q);
endmodule

structural model
module srl(input s,r,output q,qb);
nor g1(q,r,qb);
nor g2(qb,s,q);
endmodule

behavioral model
module srl(input s,r,output reg q,output qb);
assign qb=(~q);
always @ (*) begin
	case ({s,r})
		2'b00:q=q; 		//nochange
		2'b01:q=1'b0;		//reset
		2'b10:q=1'b1;		//set
		2'b11:q=1'bx;		//un determine
	endcase
end
endmodule
