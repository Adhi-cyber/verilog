module four_to_one_assign (out, in, s);

output out;
wire out;
input [3:0] in;
input [1:0] s;

assign out = (~(s[0]&s[1])&in[0]) | ((~s[1])&s[0]&in[1]) | ((~s[0])&s[1]&in[2]) | (s[1]&s[0]&in[3]);

endmodule

