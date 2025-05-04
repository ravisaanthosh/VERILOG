//slight logical error.fix soon as possible
module cla(input [3:0] a,b,input cin,output [3:0] sum,output cout);
wire p0,p1,p2,p3,p4,g0,g1,g2,g3;
wire c0,c1,c2,c3;
//propagate formula
assign p0=a[0]^b[0];
assign p1=a[1]^b[2];
assign p2=a[2]^b[3];
assign p3=a[3]^b[3];

//generate formula
assign g0=a[0] & b[0];
assign g1=a[1] & b[1];
assign g2=a[2] & b[2];
assign g3=a[3] & b[3];

//carry formula
assign c0=g0|p0 & cin;
assign c1=g1 | p1 & g0 | p1 & p0 & cin;
assign c2=g2 | p2 & g1 | p2 & p1 & g0 | p2 & p1 & p0 & cin;
assign c3=g3 | p3 & g2 | p3 & p2 & g1 | p3 & p2 & p1 & g0 | p3 & p2 & p1 & p0 & cin;

//sum equation
assign sum[0]=p0^cin;
assign sum[1]=p0^c1;
assign sum[2]=p0^c2;
assign sum[3]=p0^c3;

//cout equation
assign cout=c3;
endmodule

