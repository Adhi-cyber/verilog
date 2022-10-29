module mux_2x1_gates(a,b,output_and,output_or,output_not);
   
input a,b;
output reg output_and,output_or,output_not;
  
always @(a,b)
     begin
     
       if(a==1'b0)
         begin
           output_and = 1'b0;
           output_or = b;
           output_not = 1'b1;
         end
     
       else
         begin
            output_and = b;
            output_or = 1'b1;
            output_not = 1'b0;
         end
  end
endmodule
