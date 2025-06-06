module (input [7:0]in,[2:0]sel,output reg out);
  integer i;
  always @(*)begin
    out=0;
    for(i=0;i<8;i=i+1)begin
      if(sel==i)
        out=in[i]
        end
        endmodule
        
