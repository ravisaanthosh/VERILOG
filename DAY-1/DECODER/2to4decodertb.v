module tb_decoder_2to4;
    reg  [1:0] in;
    reg        enable;
    wire [3:0] out;
    decoder_2to4 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
	    $dumpfile("decoder_2to4.vcd");
	    $dumpvars;
        $display("Time\tEnable\tIn\tOut");
        $monitor("%0t\t%b\t%02b\t%04b", $time, enable, in, out);

      
        enable = 0; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        
        enable = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end
endmodule
