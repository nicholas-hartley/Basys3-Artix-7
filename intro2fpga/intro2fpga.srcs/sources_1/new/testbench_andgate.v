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


module testbench_andgate();
    reg a,b;
    wire y;
    AndGate dut(a,b,y);
    initial begin
        a=0; b=0; #10;
        b=1;      #10;
        a=1; b=0; #10;
        b=1;      #10;
    end
endmodule
