module four_bit_sub_tst;

//input
reg a, b, bin;

//output 
wire d, bo;

four_bit_full_sub uut(
	.d(d),
	.bo(bo),
	.a(a),
	.b(b),
	.bin(bin)
);

initial
begin
	a = 4'b0000;
	b = 4'b0000;
	bin = 1;
end

always #2 a = a + 1'b1;
always #1 b = b + 1'b1;

initial #100 $finish ;

endmodule 