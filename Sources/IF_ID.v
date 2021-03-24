module IF_ID(in, out, clk);
    input wire [31:0] in;
    input wire clk;
    output reg [31:0] out;
    
    always @ (posedge clk)
        out <= in;
endmodule