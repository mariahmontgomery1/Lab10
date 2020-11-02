`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 09:14:44 AM
// Design Name: 
// Module Name: show_2c_test
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


module show_2c_test();

    reg [7:0] Din_t;
    wire [15:0] Dout_t;
    wire sign_t;
    
    
    show_2c dut(
        .Din(Din_t),
        .Dout(Dout_t),
        .sign(sign_t)
     );
     
     initial begin
        Din_t = 10; #10;
        Din_t = -10; #10;
        $finish;
    end 
endmodule
