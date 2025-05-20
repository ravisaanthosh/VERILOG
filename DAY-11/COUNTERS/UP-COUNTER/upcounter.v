//synchronous up counter
module upcou(input clk,rs,output reg [2:0] count);
always @(posedge clk)begin
if(rs==0)
count = 3'b000;
else
count = count + 3'b001;
end
endmodule
