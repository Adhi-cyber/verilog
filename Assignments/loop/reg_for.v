module array_reg(x,y);

input [19:0] x;
output reg y;

integer i = 0;

always @(*) 
begin
	y = x[0];
	
	for(i=1; i<20; i=i+1)
	begin
		if(x[i] > y)
			y = x[i];
	end
end

endmodule
