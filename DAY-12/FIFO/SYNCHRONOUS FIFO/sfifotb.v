module syncfifotb;
parameter FIFO_DEPTH = 8;
parameter DATA_WIDTH = 32;
reg clk = 0;
reg rs;
reg write_enable;
reg read_enable;
reg [DATA_WIDTH-1:0] data_in;
wire [DATA_WIDTH-1:0] data_out;
wire flag_empty;
wire flag_full;

integer i;

syncfifo #(FIFO_DEPTH, DATA_WIDTH) uut(clk, rs, write_enable, read_enable, data_in, data_out, flag_empty, flag_full);

always begin #5 clk = ~clk; end

task write_data(input [DATA_WIDTH-1:0] d_in);
begin
  @(posedge clk);
  write_enable = 1;
  data_in = d_in;
  $display($time, " write_data data_in = %0d", data_in);
  @(posedge clk);
  write_enable = 0;
end
endtask

task read_data();
begin
  @(posedge clk);
  read_enable = 1;
  @(posedge clk);
  $display($time, " read_data data_out = %0d", data_out);
  read_enable = 0;
end
endtask

initial begin
  #1;
  rs = 0;
  read_enable = 0;
  write_enable = 0;

  @(posedge clk)
  rs = 1;

  $display($time, "\n TEST-1 WRITE");
  write_data(1);
  write_data(10);
  write_data(100);
  read_data();
  read_data();

  $display($time, "\n TEST-2 READ");
  for (i=0; i<FIFO_DEPTH;i=i+1) begin
    write_data(2**i);
    read_data();
  end

  $display($time, "\n TEST-3 READ/WRITE");
  for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
    write_data(2**1);
  end

  for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
    read_data();
  end

  #40 $finish;
end

initial begin
  $dumpfile("fifo.vcd");$dumpvars;
end
endmodule
