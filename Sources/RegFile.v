module RegFile(Instr, we, wn, d, Data1, Data2, clk);
    input wire [31:0] Instr;
    input wire we, clk;
    input wire [4:0] wn;
    input wire [31:0] d;
    output reg [31:0] Data1;
    output reg [31:0] Data2;
    wire [4:0] rna, rnb;
    assign rna = Instr[25:21];
    assign rnb = Instr[20:16];
    reg [31:0]RegF[31:0];
    
    initial 
    begin
        RegF[0] <= 32'd0;
        RegF[1] <= 32'd0;
        RegF[2] <= 32'd0;
        RegF[3] <= 32'd0;
        RegF[4] <= 32'd0;
        RegF[5] <= 32'd0;
        RegF[6] <= 32'd0;
        RegF[7] <= 32'd0;
        RegF[8] <= 32'd0;
        RegF[9] <= 32'd0;
    end
    
    always @ (*)
    begin
        Data1 <= RegF[rna];
        Data2 <= RegF[rnb];
    end
    
    always @ (negedge clk)
    begin
        if (we)
            RegF[wn] <= d;
    end
endmodule