module srff(input s,r,clk,rs,output reg q,output qb);
always @ (posedge clk) begin
	if (rs) begin
q<=1;
end
else
casex ({s,r})
2'b00 :q<=q; //no change
2'b01 :q<=1'b0; //reset
2'b10 :q<=1'b1; //set
2'b11 :q<=1'bx; //invalid
endcase
end
assign qb=~q;
endmodule
