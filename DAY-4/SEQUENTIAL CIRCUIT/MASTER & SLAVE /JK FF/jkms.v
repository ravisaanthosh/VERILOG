module jkms(input j,k,clk,output reg msq,msqb);
reg sq,sqb;
always @ (posedge clk) begin
if (j==0 && k==0) begin
sq<=1'bx;
sqb<=1'bx;
end
else if(j==0 && k==1) begin
sq<=1'b0;
sqb<=1'b1;
end
else if(j==1 && k==0) begin
sq<=1'b1;
sqb<=1'b0;
end
else begin
sq<=~sq;
sqb<=~sqb;
end
end
//slave configuration
always @ (negedge clk) begin
msq<=sq;
msqb<=sqb;
end
endmodule
