//step-1
module tff(input t,clk,output reg qtm,qtbm);
always @ (posedge clk)begin
if (t==0)begin
qtm<=1'b0;
qtbm<=1'b1;
end
else begin
qtm<=1'b0;
qtbm<=1'b1;
end
end
endmodule

//step-2 jk flip flop
module jkff(input j,k,clk,output reg qjs,output reg qjsb);
always @ (negedge clk)begin
if(j==0 && k==0)begin
qjs<=1'bx;
qjsb<=1'bx;
end
else if(j==0 && k==1)begin
qjs<=1'b0;
qjsb<=1'b1;
end
else if(j==1 && k==0)begin
qjs<=1'b1;
qjsb<=1'b0;
end
else begin
qjs<=1'b1;
qjsb<=1'b0;
end
end
endmodule

//step-3
module ins(input t,clk,output qtm,qtbm);
wire qjs,qjsb;
tff master(.t(t),.clk(clk),.qtm(qtm),.qtbm(qtbm));
jkff slave(.j(qtm),.k(qtbm),.clk(clk),.qjs(qjs),.qjsb(qjsb));
endmodule
