//steps to bulid a code
// step 1 master source flipflop code
// step 2 slave source flipflop code
// step 3 comibine together master + slave code via instansation

// SR FLIP FLOP ACT AS A MASTER D FLIP FLOP ACT AS A SLAVE
//step-1   MASTER CODE
module srff(input s,r,clk,output reg qs,qbs);
always @(posedge clk)begin
if(s==0 && r==0)begin
qs<=1'bx;
qbs<=1'bx;
end
else if(s==0 && r==1)begin
qs<=1'b0;
qbs<=1'b1;
end
else if(s==1 && r==0)begin
qs<=1'b1;
qbs<=1'b0;
end
else begin
qs<=1'bx;
qbs<=1'bx;
end
end
endmodule
//step-2  SLAVE CODE
module dff(input d1,d2,clk, output reg qm,output reg qbm);
always @ (negedge clk) begin
qm<=d1;
qbm<=d2;
end
endmodule
//step-3  TOP MODULE CODE
module ins(input s,r,clk,output qm,qbm); //doubt question why we connect here qm,qbm else of qs,qbs??????? ,cleared fixed because as per circuit diagram mentioned in qs,qbs thats only we entered a qs,qbs we can also enter a qm,qdm 
wire qs,qbs;
srff master(.s(s),.r(r),.clk(clk),.qs(qs),.qbs(qbs));
dff slave(.d1(qs),.d2(qbs),.clk(clk),.qm(qm),.qbm(qbm));
endmodule

