`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2019 06:33:58 PM
// Design Name: 
// Module Name: signEx
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


module signEx(Instr, Imm);
    input wire [31:0] Instr;
    output reg [31:0] Imm;
    wire [15:0] shortImm;
    assign shortImm = Instr[15:0];
    always @ (*)
    begin
        Imm[15:0] <= shortImm;
        if (shortImm[15] == 1)
            Imm[31:16] <= 16'b1111111111111111;
        else
            Imm[31:16] <= 16'b0000000000000000;
    end
endmodule
