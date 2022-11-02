module reg_while (in, out);

input [19:0] in;
integer i = 1;

output reg out;

always @(*)
begin
	out = in[0];

	while (i<20) begin
		if(in[i] > out)
			out = in[i];
	end
end

endmodule
	
