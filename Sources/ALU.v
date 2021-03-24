module ALU(a, b, ealuc, r);
    input wire [31:0] a;
    input wire [31:0] b;
    input wire [1:0] ealuc;
    output reg [31:0] r;
    
    always @(*) 
    begin
        if (ealuc == 2'b10)
            r <= a+b;
        else if (ealuc == 2'b00)
            r <= b;
    end

endmodule 