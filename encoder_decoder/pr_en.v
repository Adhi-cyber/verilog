module pr_en(a,b,c,d,sel,out);

input [7:0] a;
input [7:0] b;
input [7:0] c;
input [7:0] d;
input [1:0] sel;
output reg[7:0] out;

always @( a or b or c or d or sel)
begin
	casex(sel)
	4'b0001 : out <= a;
	4'b001x : out <= b;
	4'b01xx : out <= c;
	4'b1xxx : out <= d;
endcase
end
endmodule

