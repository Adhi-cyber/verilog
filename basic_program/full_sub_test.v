module full_sub_test;

reg a;
reg b;
reg bin;

wire d;
wire b0;

full_sub_bhl uut(
	.a(a),
	.b(b),
	.bin(bin),
	.d(d),
	.bo(bo)
);

initial 
begin
{a,b,bin} = 3'b000;
#2 {a,b,bin} = 3'b001;
#2 {a,b,bin} = 3'b010;
#2 {a,b,bin} = 3'b011;
#2 {a,b,bin} = 3'b100;
#2 {a,b,bin} = 3'b101;
#2 {a,b,bin} = 3'b110;
#2 {a,b,bin} = 3'b111;
end 

initial #20 $finish;
endmodule
