`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2023 09:44:24 PM
// Design Name: 
// Module Name: LED Controller
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


module LED_Controller(
    input clock_100Mhz, // 100 Mhz clock source on Basys 3 FPGA
    input reset, // reset
    input [3:0] dig1, dig2, dig3, dig4, // Digit 1 left to Digit 4 right
    output reg [3:0] Anode, // anode signals of the 7-segment LED display
    output reg [6:0] LEDout// cathode patterns of the 7-segment LED display
    );
    
    reg [15:0] displayed_number; // counting number to be displayed
    reg [3:0] LED_BCD;
    reg [19:0] refresh_counter; // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
    wire [1:0] LED_activating_counter; 

             // count        0   ->  1  ->  2  ->  3
             // activates    LED1    LED2   LED3   LED4
             // and repeat
    
    always @(posedge clock_100Mhz or posedge reset)
    begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[19:18];
    // anode activating signals for 4 LEDs, digit period of 2.6ms
    // decoder to generate anode signals 
    always @(*)
    begin
        case(LED_activating_counter)
        2'b00: begin
            Anode = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            LED_BCD = dig1;
            // the first digit of the display
              end
        2'b01: begin
            Anode = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = dig2;
            // the second digit of the display
              end
        2'b10: begin
            Anode = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = dig3;
            // the third digit of the display
                end
        2'b11: begin
            Anode = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_BCD = dig4;
            // the fourth digit of the display    
               end
        endcase
    end
    // Cathode patterns of the 7-segment LED display 
    always @(*)
    begin
        case(LED_BCD)
        4'b0000: LEDout = 7'b1000000; // "0"     
        4'b0001: LEDout = 7'b1111001; // "1" 
        4'b0010: LEDout = 7'b0100100; // "2" 
        4'b0011: LEDout = 7'b0110000; // "3" 
        4'b0100: LEDout = 7'b0011001; // "4" 
        4'b0101: LEDout = 7'b0010010; // "5" 
        4'b0110: LEDout = 7'b0000010; // "6" 
        4'b0111: LEDout = 7'b1111000; // "7" 
        4'b1000: LEDout = 7'b0000000; // "8"     
        4'b1001: LEDout = 7'b0011000; // "9"     
        4'b1010: LEDout = 7'b0001000; // "A"     
        4'b1011: LEDout = 7'b0000011; // "B"     
        4'b1100: LEDout = 7'b1000110; // "C"     
        4'b1101: LEDout = 7'b0100001; // "D"     
        4'b1110: LEDout = 7'b0000110; // "E"     
        4'b1111: LEDout = 7'b0001110; // "F" 
        default: LEDout = 7'b1111111; // "0"
        endcase
    end
    
endmodule
