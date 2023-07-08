`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2023 09:56:47 PM
// Design Name: 
// Module Name: tb_LEDs
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


module tb_LEDs(
        input [15:0] sw, 
        output [15:0] led
    );
    Switch dut (
		.LED(led), 
		.SW(sw)
	);
endmodule
