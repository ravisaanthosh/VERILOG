//model-1 asper ring counter use not gate its will worked in jhonson counter
module rc(input clk,rs,output reg [3:0]q);
always @(posedge clk)begin
if(rs==0)
q<=4'b1010;
else begin
q[3]<=q[!0];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
end
endmodule
//model -2 
module rc(input clk, input rs, output reg [3:0] q);
  always @(posedge clk) begin
    if (rs == 0)
      q <= 4'b1010; 
    else
      q <= {~q[3], q[3:1]};  
  end
endmodule


