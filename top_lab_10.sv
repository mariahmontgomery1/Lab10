`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 05:11:44 PM
// Design Name: 
// Module Name: top_lab_10
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


module top_lab_10(
    input btnU,
    input btnD,
    input [10:0] sw,
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [15:0] led
    );
    
    wire [15:0] lab9Out;
    wire TwocSignOut;
    wire [15:0] TwocMagOut;
    wire [1:0] MSBs;
    
    top_lab9 my_top_lab9(
        .btnU(btnU),
        .btnD(btnD),
        .btnC(btnC),
        .sw(sw),
        .clk(clk),
        .led(lab9Out)
    );
    
    show_2c my_show_2c(
        .Din(lab9Out[15:8]),
        .Dout(TwocMagOut),
        .sign(TwocSignOut)
    );
    
    counter #(.N(20)) my_counter(
        .clk(clk),
        .rst(btnC),
        .MSBs(MSBs)
    );
    
    
    sseg4 my_sseg4_lab10(
        .data(TwocMagOut),
        .hex_dec(sw[15]),
        .sign(TwocSignOut),
        .digit_sel(MSBs),
        .an(an),
        .dp(dp),
        .seg(seg)
    ); 
    
    assign led = lab9Out;
    
endmodule
