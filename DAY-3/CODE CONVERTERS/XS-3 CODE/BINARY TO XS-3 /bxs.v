module sx(input [3:0] bcd,output reg[3:0] xs);
always @ (*) begin
case (bcd)
4'b0000:     xs=4'b0011;
4'b0001:     xs=4'b0100;
4'b0010:     xs=4'b0101;
4'b0011:     xs=4'b0110;
4'b0101:     xs=4'b0111;
4'b0110:     xs=4'b1000;
4'b0111:     xs=4'b1001;
4'b1000:     xs=4'b1010;
4'b1001:     xs=4'b1011;
default:     xs=4'b0000;
endcase
end
endmodule

