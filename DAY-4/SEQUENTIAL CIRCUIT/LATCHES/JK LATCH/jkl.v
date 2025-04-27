Data flow model
module jk(input j,k,output q,qb);
assign q=~(qb|j|qb);
assign qb=~(q|k|q);
endmodule

structural model // output will not sastify fix later
module jk(input j,k,output q,qb);
nor g1(qb,j,qb);
nor g2(q,k,q);
endmodule

behavioral model
module jk(input j,k,output reg q,output qb); // output will not sastify fix later
assign qb=~q;
always @(*) begin
case ({j,k})
2'b00:q=q;//no change
2'b01:q=1'b0; //reset
2'b10:q=1'b1; //set
2'b11:q=1'bx; //toggle
endcase
end
endmodule
