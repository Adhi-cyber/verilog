module swap (in, sel, out1,out2, out);

input [15:0] in;
input  sel;

output reg [7:0] out1;
output reg [7:0] out2;

output wire [15:0] out;

always @(*)
begin
	if(sel == 1)
		out1 = in[15:8];
end

always @(*)
begin
	if(sel == 1)
		out2 = in[7:0];
end

assign out = {out1,out2};

endmodule
