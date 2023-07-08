`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nicholas Hartley
// 
// Create Date: 07/05/2023 05:46:30 PM
// Design Name: 
// Module Name: Addition
// Project Name: 
// Target Devices: xc7a35tcpg236-1
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


module Addition(
    input clk, // 100 Mhz clock source on Basys 3 FPGA
    input reset, // reset
    input [7:0] lhs, rhs, //LHS and RHS of addition equation
    output [7:0] lhLED, rhLED, // Output for the switch LEDs
    output [3:0] Anode_Activate, // anode signals of the 7-segment LED display
    output [6:0] LED_out// cathode patterns of the 7-segment LED display
    );
    
    reg [8:0] sum;
    
    reg [3:0] dig2, dig3, dig4;
    
    assign lhLED = lhs;
    assign rhLED = rhs;
    
    LED_Controller Seg7(
    .clock_100Mhz(clk), // 100 Mhz clock source on Basys 3 FPGA
    .reset(reset), // reset
    .dig1(4'b0000), 
    .dig2(dig2), 
    .dig3(dig3), 
    .dig4(dig4), // Digit 1 left to Digit 4 right
    .Anode(Anode_Activate), // anode signals of the 7-segment LED display
    .LEDout(LED_out)// cathode patterns of the 7-segment LED display
    );
    
    always @(*) begin
        sum <= lhs + rhs;
        dig2 <= {3'b000 + sum[8]};
        dig3 <= sum[7:4];
        dig4 <= sum[3:0];
    end
    
endmodule
