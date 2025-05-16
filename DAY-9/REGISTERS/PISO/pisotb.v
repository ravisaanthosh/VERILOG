module sipotb;
reg[3:0] pi;
reg clk,rs,load;
wire so;
piso uut(pi,clk,rs,load,so);
initial begin
clk=1;
$dumpfile("piso.vcd");
$dumpvars;
$monitor($time,"pi=%b,clk=%b,rs=%b,load=%b,so=%b",pi,clk,rs,load,so);
forever #5 clk=~clk;
end
initial begin
rs=1; rs=0;
//test verification  1110
load = 0;
pi = 4'b0111; #10
load = 1 ; #10
load = 1 ; #10
load = 1 ; #10
load = 1 ; #10
$finish;
end
endmodule

