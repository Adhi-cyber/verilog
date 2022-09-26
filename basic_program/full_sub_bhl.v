module full_sub_bhl(input a,b,bin, output reg  d,bo);

always @(*)
begin
d = a^b^bin;
bo = ( ((~a)&b) | ~(a^b)&bin);
end
endmodule 
