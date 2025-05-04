module den(input d,en,output reg q,output qb);
assign qb=~q;
always @ (*)begin
if (en) begin
q<=0;
end
else
case({d})
1'b0:q<=1'b0;
1'b1:q<=1'b1;
endcase
end
endmodule
