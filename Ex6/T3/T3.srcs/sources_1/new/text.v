`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/10 19:01:33
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CNT(
input  clk,
input  rst,
output reg [7:0]led
    );
reg [29:0]out;
always@(posedge clk or posedge rst)
begin
   if(rst)
   begin
      out <= 0;
      led <= 0;
      end
   else 
     if(out == 30'b111111111111111111111111111111)
     begin
      out <= 0;
      led <= 0;
     end
     else  
      begin
            out <= out+1;
            if(out[22] == 1) led[0] <= 1;  else led[0] <= 0;
            if(out[23] == 1) led[1] <= 1;  else led[1] <= 0;
            if(out[24] == 1) led[2] <= 1;  else led[2] <= 0;
            if(out[25] == 1) led[3] <= 1;  else led[3] <= 0;
            if(out[26] == 1) led[4] <= 1;  else led[4] <= 0;
            if(out[27] == 1) led[5] <= 1;  else led[5] <= 0;
            if(out[28] == 1) led[6] <= 1;  else led[6] <= 0;
            if(out[29] == 1) led[7] <= 1;  else led[7] <= 0;
      end
end
endmodule
