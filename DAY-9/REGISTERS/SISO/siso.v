module siso(input si,clk,rs,output reg so);
reg [3:0] store;
always @ (posedge clk) begin
if (rs==1) begin
store = 4'd0;
end
else begin
store = store >> 1;
store [3] <= si;
so <= store [0];
end
end
endmodule
