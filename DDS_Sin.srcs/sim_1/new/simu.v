`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/15 14:23:17
// Design Name: 
// Module Name: simu
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


module simu(

    );
    
     reg clk = 0;
       always #5 clk <= ~clk;  //100 MHz
       
       reg rst = 0;
       
       reg [10:0]FreqCtrl = 2;
       wire [11:0]waveform;
       
       DDS u_DDS
       (
           .clk        (clk),
           .rst        (rst),
           .FreqCtrl   (FreqCtrl),
           .waveform   (waveform)
       );
endmodule
