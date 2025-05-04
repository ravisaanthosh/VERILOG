module ten(input t,en,output reg q,output qb);
assign qb=~q;
always @ (*)begin
if (en) begin
q<=0;
end
else
case({t})
1'b0:q<=1'b1;
1'b1:q<=1'b0;
endcase
end
endmodule
