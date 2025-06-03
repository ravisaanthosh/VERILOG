module jk(input clk,rs,j,k,output reg out);
parameter off=1'b0;
parameter on=1'b1;
reg state;
always @(posedge clk or posedge rs)begin
if(rs)
state<=off;

else
state<=(state==off)?(j?on:off):(k?off:on);
end
always @(*)begin
if(state==off)
out=1'b0;
else
out=1'b1;
end
endmodule
