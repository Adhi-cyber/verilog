module d_lach(d, en, rst, q);

input d;
input en;
input rst;

output reg q;

always @(*)
	if (!rst)
		q <=0;
	else
		if(en)
			q <= d;
endmodule
