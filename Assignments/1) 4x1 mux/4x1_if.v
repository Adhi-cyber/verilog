module four_to_one_if (out, in, s);

output reg out;
input[3:0] in;
input s;

always @(*)
begin
	if(2'b00 == s)
		out = in[0];

	else if(2'b01 == s)
		out = in[1];

	else if(2'b10 == s)
		out = in[2];
	else
		out = in[3];
end

endmodule
