input c,din;
output reg y3;
reg y1,y2;
always@(posedge c)
begin
y1 <= din;
y2 <= y1;
y3 <= y2;
end


answer 3
because its non-blocking assignment so y1<=din y2<=y1 y3<=y2 its executive multiple assignments to happen in parallel.
