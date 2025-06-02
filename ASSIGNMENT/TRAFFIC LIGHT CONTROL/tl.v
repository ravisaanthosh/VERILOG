/*port deatials for traffic light control system

00 reset
01 green
10 yellow
11 red*/

module tf(input clk,rs,output reg [2:0]north_light,south_light,east_light,west_light);

reg[2:0]state; //used for states green or yellow as per directions

parameter	[2:0]	north_green	= 	3'b000;
parameter	[2:0]	north_yellow	=	3'b001;
parameter	[2:0]	south_green	=	3'b010;
parameter	[2:0]	south_yellow	=	3'b011;
parameter	[2:0]	east_green	=	3'b100;
parameter	[2:0]	east_yellow	=	3'b101;
parameter	[2:0]	west_green	=	3'b110;
parameter	[2:0]	west_yellow	=	3'b111;

reg[2:0]count; //used for timing signal lights as per directions

always @(posedge clk,posedge rs)begin
if(rs)begin
state<=north_green;
count<=3'b000;
end

else begin
case(state)

//north green
north_green : begin
if(count==3'b111)begin
count=3'b000;
state=north_yellow;
end
else begin
count=count+3'b001;
state=north_green;
end
end

//north yellow
north_yellow : begin
if(count==3'b011)begin
count=3'b000;
state=south_green;
end
else begin
count=count+3'b001;
state=north_yellow;
end
end

//south green
south_green : begin
if(count==3'b111)begin
count=3'b000;
state=south_yellow;
end
else begin
count=count+3'b001;
state=south_green;
end
end

//south yellow
south_yellow : begin
if(count==3'b011)begin
count=3'b000;
state=east_green;
end
else begin
count=count+3'b001;
state=south_yellow;
end
end

//east green
east_green : begin
if(count==3'b111)begin
count=3'b000;
state=east_yellow;
end
else begin
count=count+3'b001;
state=east_green;
end
end

//east yellow
east_yellow : begin
if(count==3'b011)begin
count=3'b000;
state=west_green;
end
else begin
count=count+3'b001;
state=east_yellow;
end
end

//west green
west_green : begin
if(count==3'b111)begin
count=3'b000;
state=west_yellow;
end
else begin
count=count+3'b001;
state=west_green;
end
end

//west yellow
west_yellow : begin
if(count==3'b011)begin
count=3'b000;
state=north_green;
end
else begin
count=count+3'b001;
state=west_yellow;
end
end

endcase
end
end

//assign output as per direction and its lights
always @(state)begin
case(state)

//north green
north_green:begin
north_light	=	3'b001; //green
south_light	=	3'b011; //red
east_light	=	3'b011; //red
west_light	=	3'b011; //red
end

//north yellow
north_yellow:begin
north_light	=	3'b010; //yellow
south_light	=	3'b011; //red
east_light	=	3'b011; //red
west_light	=	3'b011; //red
end

//south green
south_green:begin
north_light	=	3'b011; //red
south_light	=	3'b001; //green
east_light	=	3'b011; //red
west_light	=	3'b011; //red
end

//south yellow
south_yellow:begin
north_light	=	3'b011; //red
south_light	=	3'b010; //yellow
east_light	=	3'b011; //red
west_light	=	3'b011; //red
end

//east green
east_green:begin
north_light	=	3'b011; //red
south_light	=	3'b011; //red
east_light	=	3'b001; //green
west_light	=	3'b011; //red
end

//east yellow
east_yellow:begin
north_light	=	3'b011; //red
south_light	=	3'b011; //red
east_light	=	3'b010; //yellow
west_light	=	3'b011; //red
end

//west green
west_green:begin
north_light	=	3'b011; //red
south_light	=	3'b011; //red
east_light	=	3'b011; //red
west_light	=	3'b001; //green
end

//west yellow
west_yellow:begin
north_light	=	3'b011; //red
south_light	=	3'b011; //red
east_light	=	3'b011; //red
west_light	=	3'b010; //yellow
end

endcase
end

endmodule
