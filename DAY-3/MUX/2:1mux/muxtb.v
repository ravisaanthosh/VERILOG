module muxtb;
reg i0,i1,sel;
wire y;
mux h(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial begin
$dumpfile("mux.vcd");
$dumpvars;
$monitor($time,"i0=%b,i1=%b,sel=%b,y=%b",i0,i1,sel,y);
i0=0; i1=0; sel=0;
#5i0=1; sel=0;
#5i1=1; sel=1;
#5i0=0; sel=0;
#5i1=0; sel=1;
end
endmodule

