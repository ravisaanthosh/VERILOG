module tff(input t,clk,rs,output reg q,output qb);
always @ (posedge clk) begin
if (rs) begin
q<=1;
end
else
case({t})
1'b0 : q<=1'b0; //set
1'b1 : q<=1'b1; //toggle
endcase
end
assign qb=~q;
endmodule
