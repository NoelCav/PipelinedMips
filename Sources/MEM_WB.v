module MEM_WB(wreg, m2reg, rd_rt, r, do, wreg_out, m2reg_out, rd_rt_out, r_out, do_out, clk);
    input wire wreg, m2reg;
    output reg wreg_out, m2reg_out;
    input wire [4:0] rd_rt; 
    output reg [4:0] rd_rt_out;
    input wire [31:0] r, do;
    output reg [31:0] r_out, do_out;
    input clk;
    
    always @ (posedge clk)
    begin
        wreg_out <= wreg;
        m2reg_out <= m2reg;
        rd_rt_out <= rd_rt;
        r_out <= r;
        do_out <= do;
    end
endmodule        