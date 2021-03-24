`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2019 05:51:35 PM
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(Instr, regrt, out);
    input wire [31:0] Instr;
    input wire regrt;
    output reg [4:0] out;
    wire [4:0] rd;
    wire [4:0] rt;
    assign rd = Instr[15:11];
    assign rt = Instr[20:16];
    always @ (*)
    begin
        if (regrt == 1)
            assign out = rt;
        else
            assign out = rd;
    end
endmodule
