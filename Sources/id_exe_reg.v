`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2019 05:33:40 PM
// Design Name: 
// Module Name: id_exe_reg
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


module ID_EXE(
    input clk,
    input wreg,
    input m2reg,
    input wmem,
    input aluimm, 
    input [1:0] aluOp,
    input [4:0] mux_to_id_exe,
    input [31:0] qa,
    input [31:0] qb,
    input [31:0] sign_extend_to_id_exe,
    output reg wreg_out,
    output reg m2reg_out,
    output reg wmem_out,
    output reg aluimm_out,
    output reg [1:0] aluOp_out,
    output reg [4:0] mux_out,
    output reg [31:0] qa_out,
    output reg [31:0] qb_out,
    output reg [31:0] sign_extend_out
    );
    
    always @(posedge clk)
    begin
        wreg_out <= wreg;
        m2reg_out <= m2reg;
        wmem_out <= wmem;
        aluimm_out <= aluimm;
        aluOp_out <= aluOp;
        qa_out <= qa;
        qb_out <= qb;
        sign_extend_out <= sign_extend_to_id_exe;
        mux_out <= mux_to_id_exe;
    end
    
endmodule
