module sisotb;
reg si,clk,rs;
wire so;
siso uut(si,clk,rs,so);

initial begin
clk=1;
$dumpfile("siso.vcd");
$dumpvars;
$monitor($time,"si=%b,clk=%b,rs=%b,so=%b",si,clk,rs,so);
forever #5 clk=~clk;
end

initial begin
rs=1;
#10 si=0;

rs=0;
si=1;

//assign test (1110) cases use formula (2n-1) for siso which is need 7 clk pluse

 si=1; #10
 si=1; #10
 si=1; #10
 si=0; #10
 si=0; #10
 si=0; #10
 si=0; #10


$finish;
end
endmodule

