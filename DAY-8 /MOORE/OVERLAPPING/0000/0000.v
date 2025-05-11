module sq(input in,clk,rst,output out);
parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
parameter d = 4'd4;
parameter e = 4'd5;
reg [4:0] st,nx_st;
always @(posedge clk or negedge rst)begin
if (!rst)begin
st<=a;
end
else
st<=nx_st;
end
always @ (*)begin
case (st)
a : nx_st = in ? a : b;
b : nx_st = in ? a : c;
c : nx_st = in ? a : d;
d : nx_st = in ? a : e;
e : nx_st = in ? a : e;
default : nx_st = a;
endcase
end
assign out = (st==e) && (in==0);
endmodule
