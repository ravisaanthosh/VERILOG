module siso(input clk,si,output reg so);
reg y1,y2,y3,y4;
always@(posedge clk)
begin
y1 <= si;
y2 <= y1;
y3 <= y2;
so<= y3;

end
endmodule
