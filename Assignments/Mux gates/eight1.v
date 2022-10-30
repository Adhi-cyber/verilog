module samp(a, b, c, out, sel);

input [3:0] a;
input [3:0] b;
input [3:0] c;
input sel;

wire [3:0] or1;
wire [3:0] or2;

assign or1 = a+b;
assign or2 = a+c;

output reg [3:0] out;

always @(or1, or2)
	begin
		if(sel == 1'b0)
			out = or1;
		else
			out = or2;
	end
	endmodule
