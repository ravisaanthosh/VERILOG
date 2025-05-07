module seq(input x,rst,clk,output z);

parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
parameter d = 4'd4;

reg[3:0] state,nxt_state;
always @(posedge clk or negedge rst)begin
if(!rst)begin
state<=a;
end

else 
state <=nxt_state;
end

always @(*)begin
case (state)

a: nxt_state = x ? b : a;
b: nxt_state = x ? b : c;
c: nxt_state = x ? b : d;
d: nxt_state = x ? d : a;
default: nxt_state = a;
endcase
end
assign z = (state==d) && (x==0);
endmodule
