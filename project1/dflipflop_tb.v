`timescale 1ns / 1ns
`include "dflipflop.v"

module dflipflop_test;

reg D = 0, CLK = 0;
wire Q;

dFlipFlop uut(D, CLK, Q);

always begin 
    CLK = ~CLK;
    #10;
end

initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0, dflipflop_test);

    D = 0; #40;
    D = 1; #40;
    D = 0; #40;
    $finish;
    
end
endmodule