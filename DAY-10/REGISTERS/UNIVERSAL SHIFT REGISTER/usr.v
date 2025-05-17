expected output will be error fix soon as possible
/*information              universal shift register control ports
clk--> clock    			          s0	s1	opeartion
rs---> reset				            0	 0	nochange
sel--> select line for mux		  0	 1	shift right
sl--->shift left			          1	 0	shift left
sr--->shift right			          1	 1	parallel load
pin-->parallel in
pout->parallel out*/

module usr(input sr, sl, rs, clk, input [1:0] sel, input [3:0] pin, output reg [3:0] pout);
always @ (posedge clk)begin

if(rs==1)begin
pout=4'b0000;
end

else begin
case(sel)
2'b00 : pout = pout; //for nochange
2'b01 : pout = {sr,pout [3:1]}; //for shift right operation
2'b10 : pout = {pout [2:0],sl}; //for shift left operation 
2'b11 : pout = pin; // for parallel in parallel out operation
default :pout=pout;
endcase
end
end
endmodule
