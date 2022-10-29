module lut2 (in,count);

input[11:0] in;
output wire [3:0] count;

wire [2:0] a,b,c;

lut1 r1 (in[11:8], a);
lut1 r2 (in[7:4], b);
lut1 r3 (in[3:0], c);

assign count = {1'b0, a} + b + c;
endmodule

module lut1 (in, out);

input [3:0] in;

reg [2:0] inter_out[15:0];

output wire [2:0] out;

initial
begin
	inter_out[0] <= 3'b000;
	inter_out[1] <= 3'b001;
	inter_out[2] <= 3'b001;	
	inter_out[3] <= 3'b010;
	inter_out[4] <= 3'b001;
	inter_out[5] <= 3'b010;
	inter_out[6] <= 3'b010;
	inter_out[7] <= 3'b011;
	inter_out[8] <= 3'b001;
	inter_out[9] <= 3'b010;
	inter_out[10] <= 3'b010;
	inter_out[11] <= 3'b011;
	inter_out[12] <= 3'b010;
	inter_out[13] <= 3'b011;
	inter_out[14] <= 3'b011;
	inter_out[15] <= 3'b100;
end

assign out = inter_out[in];
endmodule

