module eight_qn(a, b, c, out, sel);

input [3:0] a;
input [3:0] b;
input [3:0] c;

input sel;

output wire [3:0] out;

output reg [3:0] out1;
output reg [3:0] out2;

output reg [3:0] f_out;

always @(*)
begin
	if (a == 1'b0)
	begin
		out1 = b;
		out2 = c;
	end

	else
	begin
		out1 = 1'b1;
		out2 = 1'b1;
	end
end

always @(out1, out2)
begin
	if (sel == 1'b0)
	begin
		f_out = out1;
	end
	
	else
		f_out = out2;
end

assign out = f_out;

endmodule


