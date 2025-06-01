/*Design a finite state machine that has an input x and output y. The output should
be asserted whenever x = 1 or x = 0 for three consecutive clock pulses. In other
words, the FSM should detect the sequences 111 or 000. Overlapping sequences
are allowed, so a sequence of four or five 0s or 1s should also output 1.*/
/*This fsm contains 111 and melay state*/


module seq(input x,rst,clk,output z);

parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
reg[2:0] state,nxt_state;
always @(posedge clk or negedge rst)begin
if(rst==0)begin
state<=a;
end

else 
state <=nxt_state;
end

always @(*)begin
case (state)

a: nxt_state = x ? b : a;
b: nxt_state = x ? c : a;
c: nxt_state = x ? c : a;
default: nxt_state = a;
endcase
end
assign z = (state==c) && (x==1);
endmodule
