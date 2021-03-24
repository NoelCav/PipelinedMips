module EXE_MEM(wreg, m2reg, wmem, rd_rt, r, dl, wreg_out, m2reg_out, wmem_out, rd_rt_out, r_out, dl_out, clk);
    input wire wreg, m2reg, wmem;
    output reg wreg_out, m2reg_out, wmem_out;
    input wire [4:0] rd_rt; 
    output reg [4:0] rd_rt_out;
    input wire [31:0] r, dl;
    output reg [31:0] r_out, dl_out;
    input clk;
    
    always @ (posedge clk)
    begin
        wreg_out <= wreg;
        m2reg_out <= m2reg;
        wmem_out <= wmem;
        rd_rt_out <= rd_rt;
        r_out <= r;
        dl_out <= dl;
    end
endmodule