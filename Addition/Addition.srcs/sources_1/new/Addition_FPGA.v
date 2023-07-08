`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 10:27:20 PM
// Design Name: 
// Module Name: Addition_FPGA
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


module Addition_FPGA(
    input CLK100MHZ, // 100 Mhz clock source on Basys 3 FPGA
    input btnC, // reset
    input [15:0] sw, //LHS and RHS of addition equation
    output [15:0] LED, // Output for the switch LEDs
    output [3:0] an, // anode signals of the 7-segment LED display
    output [6:0] seg// cathode patterns of the 7-segment LED display
    );
    
    Addition dut(
    .clk(CLK100MHZ), // 100 Mhz clock source on Basys 3 FPGA
    .reset(btnC), // reset
    .lhs(sw[15:8]),
    .rhs(sw[7:0]),
    .lhLED(LED[15:8]), 
    .rhLED(LED[7:0]), // Output for the switch LEDs
    .Anode_Activate(an), // anode signals of the 7-segment LED display
    .LED_out(seg)// cathode patterns of the 7-segment LED display
    );
endmodule
