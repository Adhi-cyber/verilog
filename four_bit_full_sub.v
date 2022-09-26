module four_bit_full_sub(a,b,bin,d,bo);

//input 
input [3:0] a,b;
input bin;

//output 
output [3:0]d;
output bo;

wire [2:0]c;

full_subtractor_bfl fsab1(d[0],c[0],a[0],b[0],1);
full_subtractor_bfl fsab2(d[1],c[1],a[1],b[1],c[0]);
full_subtractor_bfl fsab3(d[2],c[2],a[2],b[2],c[1]);
full_subtractor_bfl fsab4(d[3],bo,a[3],b[3],c[2]);

endmodule 

module full_subtractor_bfl(d,c,a,b,bin);

output reg d,c;
input a,b,bin;

always @(*)
begin
d = a^b^bin;
c = ( ((~a)&b) | ~(a^b)&bin);
end

endmodule 