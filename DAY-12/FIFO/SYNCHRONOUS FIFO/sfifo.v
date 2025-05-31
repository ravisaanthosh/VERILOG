module syncfifo
#(parameter FIFO_DEPTH = 8,
parameter DATA_WIDTH = 32)
(input clk,
input rs,
input write_enable,
input read_enable,
input [DATA_WIDTH-1:0] data_in,
output reg [DATA_WIDTH-1:0] data_out,
output flag_empty,
output flag_full);


localparam FIFO_DEPTH_LOG = $clog2(FIFO_DEPTH);
reg [DATA_WIDTH-1:0] fifo [0:FIFO_DEPTH-1];

//write pointer / read pointer have a 1 bit extra at MSB
reg[FIFO_DEPTH_LOG:0] write_pointer;
reg[FIFO_DEPTH_LOG:0] read_pointer;

//write operation
always @(posedge clk or negedge rs) begin
if(!rs)
write_pointer <=0;
else if (write_enable && !flag_full) begin
fifo[write_pointer[FIFO_DEPTH_LOG-1:0]] <=data_in;
write_pointer <=write_pointer +1'b1;
end
end

//read operation
always @(posedge clk or negedge rs) begin
if(!rs)
read_pointer <=0;
else if(read_enable && !flag_empty) begin
data_out<=fifo[read_pointer[FIFO_DEPTH_LOG-1:0]];
read_pointer<=read_pointer +1'b1;
end
end

//now assign a output
assign flag_empty =(read_pointer == write_pointer);
assign flag_full=(read_pointer=={~write_pointer[FIFO_DEPTH_LOG],write_pointer[FIFO_DEPTH_LOG-1:0]});
endmodule
