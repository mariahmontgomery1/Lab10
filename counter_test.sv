`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:12:57 PM
// Design Name: 
// Module Name: counter_test
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


module counter_test();
    reg clk;
    reg rst_t;
    wire [1:0] MSBs_t;
    
    counter #(.N(4)) dut(
        .clk(clk),
        .rst(rst_t),
        .MSBs(MSBs_t)
    );
    
    always begin 
        clk = ~clk; #5;
    end
    
    initial begin
        clk = 0;
        rst_t = 0; #10;
        rst_t = 1; #3;
        rst_t = 0; #10;
        $finish;
    end 

endmodule
