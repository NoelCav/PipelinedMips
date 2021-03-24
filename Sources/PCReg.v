module PCReg(in, out, clk);
    input [31:0] in;
    input wire clk;
    output reg [31:0] out;
    always @ (posedge clk)
        out <= in;
endmodule