module dbf(input clk,rs,s0,s1,s2,s3,s4,output out);
/*parameter	s0= 3'd0;
parameter	s1= 3'd1;
parameter	s2= 3'd2;
parameter	s3= 3'd3;
parameter	s4= 3'd4;*/

reg[2:0] present,next;
always @(posedge clk or rs)begin
if(rs)begin
present<=s0;
end

else
present<=next;
end

always@(*)begin
case(present)

s0:next=s0? s1:s0;
s1:next=s1? s3:s2;
s2:next=s2? s0:s4;
s3:next=s3? s2:s1;
s4:next=s4? s4:s3;
default : next=s0;
endcase
end
assign out=(present==s0)?1'd1:1'd0;
endmodule

