`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:39:02 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    
    wire [1:0] MSBs;
    
    counter #(.N(20)) my_counter(
        .clk(clk),
        .rst(btnC),
        .MSBs(MSBs)
    );
    
    
    sseg4 my_sseg4_lab10(
        .data(16'b0),
        .hex_dec(0),
        .sign(0),
        .digit_sel(MSBs),
        .an(an),
        .dp(dp),
        .seg(seg)
    ); 
endmodule
