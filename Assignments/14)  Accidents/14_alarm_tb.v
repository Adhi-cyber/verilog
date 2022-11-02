module alarm_tb;

reg a,b,c,d;
wire o;

alarm uut(.a(a), .b(b),
	.c(c), .d(d), .o(o));

initial 
begin
	a = 1'b0;
	b = 1'b0;
	c = 1'b0;
	d = 1'b0;

	always #10 a = a + 1'b1;
	always #20 b = b + 1'b1;
	always #30 c = c + 1'b1
	always #10 d = d + 1'b1;
end

 $display("time=%0t\tinput value:\t a=%b\tb=%b\tc=%b\td=%b\ts=%b\toutputvalue o=%b",$time,a,b,c,d,s,o);
initial #100 $finish;

endmodule

