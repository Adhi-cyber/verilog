module mux_2x1_gates(a,b,output_and, output_or, output_nand, output_xor, output_xnor);
   
input a,b;
output reg output_and, output_or, output_nand, output_xor, output_xnor;
  
always @(a,b)
     begin
     
       if(a==1'b0)
         begin
           output_and = 1'b0;
           output_or = b;
           output_nand = 1'b1;
	   output_xor = b;
	   output_xnor = (~b);
         end
     
       else
         begin
            output_and = b;
            output_or = 1'b1;
            output_nand = (~b);
	    output_xor = (~b);
	    output_xnor = b;
         end
  end
endmodule
