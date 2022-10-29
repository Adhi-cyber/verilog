module eight_to_one(out, in, s);

input [7:0] in;
input [2:0] s;
output out;
wire w1, w2, w3, w4, w5;
four_to_one a(w1, in[3:0], s[1:0]);
four_to_one b(w2, in[7:4], s[1:0]);
not n(w3, s[2]);
and an1(w4, w1, w3);
and an2(w5, w2, s[2]);
nor n1(out, w4, w5);

endmodule


module four_to_one(out, in, s);

output reg out;
input[3:0] in;
input [1:0] s;

always @(*)
begin
	case(s)
		2'b00 : out=in[0];
		2'b01 : out=in[1];
		2'b10 : out=in[2];
		2'b11 : out=in[3];
	endcase
end
endmodule
