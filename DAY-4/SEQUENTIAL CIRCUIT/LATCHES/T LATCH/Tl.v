Data flow model // output will not sastify fix later
module t(input t,output q,qb);
assign q=~(qb|t|qb);
assign qb=~(q|t|q);
endmodule*/

structural model   // output will not sastify fix later
module t(input t,output q,qb);
nor g1(q,qb,t,qb);
nor g2(qb,q,t,q);
endmodule*/

behavioral model  // output will not sastify fix later
module t(input t,output reg q,output qb);
assign qb=~q;
always @(*) begin
case ({t})
1'b0:q=q; //reset
1'b1:q=1'b1; //toggle
endcase
end
endmodule
