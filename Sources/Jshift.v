`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2019 07:58:57 PM
// Design Name: 
// Module Name: Jshift
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


module Jshift(addr, pc, jpc);
    input [31:0] addr;
    input [31:0] pc;
    output [31:0] jpc;
    
    assign jpc[27:2] = addr[25:0];
    assign jpc[31:28] = pc[31:28];
    assign jpc [1:0] = 2'b00;
endmodule
