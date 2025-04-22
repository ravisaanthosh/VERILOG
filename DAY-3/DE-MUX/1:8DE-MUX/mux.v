behavioral model 
module dmux(input s0,s1,s2,y,output reg y0,y1,y2,y3,y4,y5,y6,y7);
always @(*) begin
if (s0==0 & s1==0 & s2==0)
	y0=y;

else if (s0==0 & s1==0 & s2==1)
	y1=y;

else if (s0==0 & s1==1 & s2==0)
	y2=y;

else if (s0==0 & s1==1 & s2==1)
	y3=y;

else if (s0==1 & s1==0 & s2==0)
	y4=y;

else if (s0==1 & s1==0 & s2==1)
	y5=y;

else if (s0==1 & s1==1 & s2==0)
	y6=y;
else 
	y7=y;

end
endmodule
