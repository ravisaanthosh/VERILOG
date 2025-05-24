module rc(input clk,rs,output reg [3:0]q);
always @(posedge clk)begin
if(rs==0)
q<=4'b1110;
else begin
q[3]<=q[0];
q[2]<=q[3];
q[1]<=q[2];
  
//model two using decoder and mux
//i will design in 4bit ringcounter using above combinational circuit

module rc(input clk,rs,output reg [3:0]q);
reg[1:0] state;
wire [3:0]dc;
assign dc[0]=(state==2'b00);
assign dc[1]=(state==2'b01);
assign dc[2]=(state==2'b10);
assign dc[3]=(state==2'b11);

//mux

always @(posedge clk or posedge rs)begin
	if(rs)begin
		state<=2'b00;
	end
	else begin
		state<=state +2'b1;
	end
end
//assign input and output

always @(*)begin
	q=dc;
end
endmodule*/
q[0]<=q[1];
end
end
endmodule
