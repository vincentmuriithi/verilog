`timescale 1ns / 1ns
`include "decoder.v"

module decoder2to4_test;

reg [1:0] A;
wire [3:0] D;

decoder2to4 uut(A, D);

initial begin 
    $dumpfile("decoder2to4.vcd");
    $dumpvars(0, decoder2to4_test);

    A = 2'b00; #20;
    A = 2'b01; #20;
    A = 2'b10; #20;
    A = 2'b11; #20;

    $display("end of test D is -%d", D);
end

endmodule