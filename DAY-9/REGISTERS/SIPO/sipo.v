module sipo(input si,clk,rs,output reg[3:0] po);
reg [3:0] store;
always @ (posedge clk) begin
if(rs==1)begin
store <= 4'd0;
end
else begin
store <= store >>1;
store [3] <= si;
end
po <= store;
end
endmodule
