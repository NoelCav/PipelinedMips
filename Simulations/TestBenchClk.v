
module TestBenchClk(clk);
    output reg clk;
    
    initial begin
        clk = 0;
    end
    always
        #1 clk = !clk;
endmodule