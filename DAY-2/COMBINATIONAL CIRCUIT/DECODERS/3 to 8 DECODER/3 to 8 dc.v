Data flow model
module dc3to8(input wire [2:0] in, input wire en,output [7:0] out);
assign out[0]=en & ~in[2] & ~in[1] & ~in[0];
assign out[1]=en & ~in[2] & ~in[1] & in[0];
assign out[2]=en & in[2] & ~in[1] & in[0];
assign out[3]=en & in[2] & ~in[1] & ~in[0];
assign out[4]=en & in[2] & ~in[1] & ~in[0];
assign out[5]=en & in[2] & ~in[1] & in[0];
assign out[6]=en & in[2] & in[1] & ~in[0];
assign out[7]=en & in[2] & in[1] & in[0];
endmodule

//behavioral model sooon
