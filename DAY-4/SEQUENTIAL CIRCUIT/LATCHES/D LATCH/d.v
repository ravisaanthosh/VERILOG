Data flow model
module d (input d,output q,qb);
assign q= ~(qb | d);
assign qb= ~(q|(~d));
endmodule

structural model // expected output will not sastify fix later
module d (input d,output q,qb);
not g1(qb,d);
nor g2(q,qb,d);
nor g3(qb,q,d);
endmodule

behavioral model
module d(input d,output reg q,output qb);
assign qb=~q;
always @ (*) begin
case ({d})
1'b0:q=1'b0; //reset
1'b1:q=1'b1; //set
endcase
end
endmodule
