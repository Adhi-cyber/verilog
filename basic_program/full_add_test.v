module full_add_test;

reg a;
reg b;
reg cin;

//output
wire s;
wire co;

full_adder_df uut(
	.a(a),
	.b(b),
	.cin(cin),
	.s(s),
	.co(co)
);

initial 
begin  

a = 0;
b = 0;
cin = 0;
end

always #4 a = a + 1'b1;
always #2 b = b + 1'b1;
always #1 cin = cin + 1'b1;



initial $monitor("a=%b,b=%b,cin=%b,s=%b,c0=%b",a,b,cin,s,co);
initial #20 $finish;

endmodule
