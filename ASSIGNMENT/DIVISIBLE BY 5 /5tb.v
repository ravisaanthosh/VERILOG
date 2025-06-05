module dbftb;
reg clk,rs,s0,s1,s2,s3,s4;
wire out;
dbf uut(clk,rs,s0,s1,s2,s3,s4,out);
initial 
clk=0;
always #5 clk=~clk;
//reg[3:0]dbf=4'b1010;


initial begin
$monitor($time,"clk=%b,rs=%b,s0=%b,s1=%b,s2=%b,s3=%b,s4=%b,out=%b",clk,rs,s0,s1,s2,s3,s4,out);
$dumpfile("dbf.vcd");
$dumpvars;



 rs=0;

//#10 s0 =1;s1=1;s2=1;s3=1;s4=0; //30 div by 5 

#10 s0 =0;s1=0;s2=0;s3=1;s4=1; //3

#10 s0 =1;s1=0;s2=1;s3=0;s4=1; //21

//#10 s0 =1;s1=0;s2=1;s3=0;s4=0; //20 div by 5




//#10 in=1;




#30$finish;
end
endmodule

