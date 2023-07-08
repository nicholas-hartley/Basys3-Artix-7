`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 08:35:33 PM
// Design Name: 
// Module Name: testbench_andgate
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


module testbench_andgate(input [15:0] sw, output [15:0] LED);
    AndGate dut(
        .a(sw[0]),
        .b(sw[1]),
        .y(LED[0])
    );
endmodule
