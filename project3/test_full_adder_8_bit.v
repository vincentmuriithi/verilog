`timescale 1ns/1ns
`include "full_adder_64_bit.v"

module test_full_adder_8_bit;
reg [7:0] a, b;
wire [7:0] sum;
reg carry_in;
wire carry_out;
integer value;

full_adder_8_bit dut(
    .sum(sum),
    .carry_out(carry_out),
    .carry_in(carry_in),
    .A(a),
    .B(b)
);

initial begin
    a = 8'd4; b = 8'd4; carry_in = 0;

    #20;
    a = 8'd10; b = 8'd10; 
    #20;
    a = 8'd15; b = 8'd15;
    #20;
    a = 8'd20; b = 8'd20;
    #20;
    a = 8'd30; b = 8'd30;
end

initial begin
    $dumpfile("full_adder_8_bit.vcd");
    $dumpvars(0, test_full_adder_8_bit);
end

initial begin 
    $monitor("time = %0t a = %b b = %b carry_in = %b sum = %b carry_out = %b",
     $time, a, b, carry_in, sum, carry_out);
    #100;
    $finish;
end
endmodule