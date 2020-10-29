`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:55:52 AM
// Design Name: 
// Module Name: counter
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


module counter #(parameter N=1)(
    input clk,
    input rst,
    output [1:0] MSBs
    );
    
    wire [N-1:0] Qnext;
    wire [N-1:0] Qreg;
    assign Qnext = Qreg +1;
    
    register #(.N(N)) my_reg_in_count1(
        .D(Qnext),
        .clk(clk),
        .en(1),
        .rst(rst),
        .Q(Qreg)
    );
    
    assign MSBs = Qreg[N-1:N-2];
endmodule
