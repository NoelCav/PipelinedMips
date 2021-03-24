`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2019 07:37:39 PM
// Design Name: 
// Module Name: equal32
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


module equal32(A, B, bit);
    input [31:0] A;
    input [31:0] B;
    output bit;
    assign bit = (A==B);  
endmodule
