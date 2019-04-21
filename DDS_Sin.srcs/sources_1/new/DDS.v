`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/15 14:20:58
// Design Name: 
// Module Name: DDS
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


module DDS(
    input clk,
    input rst,
    input [10:0]FreqCtrl,
    output [11:0]waveform
    );
    
    wire [11:0]phase;
    PhaseAdder u_PhaseAdder(
           .clk (clk),
            .rst(rst),
            .FreqCtrl(FreqCtrl),
            .phase(phase)
        );
        DDS_ROM u_DDS
        (
            .a (phase[11:0]),
            .spo (waveform)
        );
endmodule
