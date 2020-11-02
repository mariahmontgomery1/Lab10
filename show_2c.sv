`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:50:36 PM
// Design Name: 
// Module Name: show_2c
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


module show_2c(
    input [7:0] Din,
    output [15:0] Dout,
    output sign
    );
    
    wire [7:0] mux_out;
    wire [7:0] converted_input;
    assign converted_input = ~Din[7:0] + 1;
    
    mux2 #(.BITS(8)) my_mux2_lab10(
        .in0(Din),
        .in1(converted_input),
        .sel(Din[7]),
        .out(mux_out) 
    );
    
    
    assign sign = Din[7];
    assign Dout = {8'b0, mux_out};
    
    
    
endmodule
