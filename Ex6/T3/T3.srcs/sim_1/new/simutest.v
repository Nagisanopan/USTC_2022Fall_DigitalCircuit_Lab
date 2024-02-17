`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/17 15:40:42
// Design Name: 
// Module Name: simutest
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


module simutest();
reg clk,rst;
reg [4:0]out;
reg [7:0]led;
initial clk = 0;
always #5 clk = ~clk;
initial
begin
rst = 1;
#55 rst_n = 0;
end
CNT CNT1(.clk(clk),.rst(rst),.led(led));
endmodule
