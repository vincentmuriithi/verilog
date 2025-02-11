`timescale 1ns / 1ns
`include "sequentialDemo.v"

module sequentialDemo_tb;

reg A, B, CLK = 0;
wire Z;

sequentialDemo uut(.A(A), .B(B), .CLK(CLK), .Z(Z));

always begin
    CLK = ~CLK;
    #10;
end

initial begin
    $dumpfile("sequentialDemo.vcd");
    $dumpvars(0, sequentialDemo_tb);

    {A, B} = 2'b00; #20;
    {A, B} = 2'b11; #20;
    {A, B} = 2'b01; #20;
    {A, B} = 2'b00; #20;
    {A, B} = 2'b11; #20;
    {A, B} = 2'b10; #20;
    {A, B} = 2'b01; #20;
    {A, B} = 2'b10; #20;
    $stop;
end

endmodule