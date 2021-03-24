module ControlUnit(Instr, mrn, mm2reg, mwreg, rsrtequ, em, em2reg, ewreg, wreg, m2reg, wmem, aluc, aluimm, regrt);
    input wire [31:0] Instr;
    input mrn, mm2reg, mwreg, em, em2reg, ewreg, rsrtequ;
    output reg wreg;
    output reg m2reg;
    output reg wmem;
    output reg [1:0] aluc;
    output reg aluimm;
    output reg regrt;
    wire [5:0] op = Instr[31:26];
    wire [5:0] func = Instr[6:0];
    
    always @ (*)
    begin
        if (op == 6'b100011)
        begin
            wreg <= 1;
            m2reg <= 1;
            wmem <= 0;
            aluc <= 2'b00;
            aluimm <= 1;
            regrt <= 1;
        end
        else if (op == 6'b000000) // if op is for r-type instruction
        begin
            if (func == 6'b100000) // if func is add
            begin
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluc <= 2'b10;
                aluimm <= 0;
                regrt <= 1;
            end
        end
        
    end   
endmodule