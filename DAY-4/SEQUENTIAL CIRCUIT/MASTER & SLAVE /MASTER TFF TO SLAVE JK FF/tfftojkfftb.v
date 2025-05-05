module tfftb;
reg t,clk;
wire qtm,qtbm;
tff master(.t(t),.clk(clk),.qtm(qtm),.qtbm(qtbm));
ins slave(.t(t),.clk(clk),.qtm(qtm),.qtbm(qtbm));
initial begin
$dumpfile("ttojk.vcd");
$dumpvars;
clk=1;
forever #5 clk=~clk;
end
initial begin
#5 t=0; #10;
$display($time,"t=%b,clk=%b,qtm=%b,qtbm=%b",t,clk,qtm,qtbm);

#15 t=0; #20;
$display($time,"t=%b,clk=%b,qtm=%b,qtbm=%b",t,clk,qtm,qtbm);

#25 t=1; #30;
$display($time,"t=%b,clk=%b,qtm=%b,qtbm=%b",t,clk,qtm,qtbm);

#35 t=1; #40;
$display($time,"t=%b,clk=%b,qtm=%b,qtbmb=%b",t,clk,qtm,qtbm);
#45;
$finish;
end 
endmodule
