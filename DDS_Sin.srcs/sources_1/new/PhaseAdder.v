`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/15 14:12:04
// Design Name: 
// Module Name: PhaseAdder
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


module PhaseAdder(
   input clk,
   input rst,
   input [10:0] FreqCtrl,   //频率控制字，相位累加步长
   output [11:0] phase
    );
    
     reg [11:0] phase_reg = 0;
       assign phase = phase_reg;
       always@(posedge rst or posedge clk)
       begin
           if(rst)
               phase_reg<=12'd0;
           else
               phase_reg<=phase_reg+FreqCtrl; //溢出循环
       end
endmodule
