module MUX32(a, b, switch, out);
    input wire [31:0] a, b;
    input wire switch;
    output reg [31:0] out;
    
    always @ (*)
    begin
        if (switch)
            out <= b;
        else
            out <= a;
    end
endmodule