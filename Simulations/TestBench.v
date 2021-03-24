`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PSU
// Engineer: Noel Caverly
// 
// Create Date: 11/02/2019 10:34:24 PM
// Design Name: 
// Module Name: TestBench
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


module TestBench;
    //clk
    reg clk;
    
    initial begin
        clk = 0;
    end
    
    always #1 clk = ~clk;
    //TestBenchClk clkrun(clk);

    wire [31:0] adder_out, adder_in, do, Instr, do_MEM, qa, qb;
    wire wreg_out, m2reg_out, wmem_out, aluimm_out; 
    wire mwreg, mm2reg, mwmem, wwreg, wm2reg;
    wire [4:0] rd_rt;
    wire [4:0] rd_rt_out, rd_rt_MEM, rd_rt_WB;
    wire [1:0] aluc, aluc_out;
    wire wreg, m2reg, wmem, aluimm, regrt;
    wire [31:0] qa_out, qb_out, dl, r_WB, do_WB;
    wire [31:0] imm, imm_out, r, b, a_MEM, d_FW;
    //PC
    PCReg pcReg(adder_out, adder_in, clk);
    
    // IF
    PCAdder add(adder_in, adder_out);
    InstMem mem(adder_in, do);
    
    //IF/ID
    IF_ID if_id(do, Instr, clk);
    
    // ID
    ControlUnit control(Instr, wreg, m2reg, wmem, aluc, aluimm, regrt);
    Multiplexer mux(Instr, regrt, rd_rt);
    RegFile regFile(Instr, wwreg, rd_rt_WB, d_FW, qa, qb, clk);
    signEx e(Instr, imm);
    
    //ID/EXE
    ID_EXE id_exe(clk, wreg, m2reg, wmem, aluimm, aluc, rd_rt, qa, qb, imm, wreg_out, m2reg_out, wmem_out, aluimm_out, aluc_out, rd_rt_out, qa_out, qb_out, imm_out);
   
    // EXE
    MUX32 mux_EXE(qb_out, imm_out, aluimm_out, b);
    ALU alu(qa_out, b, aluc_out, r);
    
    // EXE/MEM
    EXE_MEM exe_mem(wreg_out, m2reg_out, wmem_out, rd_rt_out, r, qb_out, mwreg, mm2reg, mwmem, rd_rt_MEM, a_MEM, dl, clk);
                    // wreg,  m2reg,     wmem,     rd_rt,     r, dl,     wreg_out, m2reg_out, wmem_out, rd_rt_out, r_out, dl_out, clk
    
    // MEM
    DataMem data_mem(a_MEM, dl, mwmem, do_MEM, clk);
    
    //MEM/WB
    MEM_WB mem_wb(mwreg, mm2reg, rd_rt_MEM, a_MEM, do_MEM, wwreg, wm2reg, rd_rt_WB, r_WB, do_WB, clk);
    
    //WB
    MUX32 mux_WB(r_WB, do_WB, wm2reg, d_FW);
endmodule
