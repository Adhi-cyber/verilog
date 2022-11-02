module full_add_df (s, co, a, b, ci);

input a, b, ci;
output s, co;

wire t,k;

half v1(t, c, a, b);
half v2(s, k, t, ci);
or (co, k, c);

endmodule

module half(s, c, a, b);

input a, b;
output s, c;

assign s = a^b;
assign c = a&b;

endmodule
