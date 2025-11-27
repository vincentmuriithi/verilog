`timescale 1ns/1ns
`include "full_adder_64_bit.v"

module test_full_adder_64_bit;
reg [63:0] a, b;
reg cin;
wire cout;
wire [63:0] sum;

full_adder_64_bit dut (
    .sum(sum),
    .carry_out(cout),
    .A(a),
    .B(b),
    .carry_in(cin)
);

initial begin
    a = 64'd500; b = 64'd500; cin = 0;

    #20
    a = 64'd2000; b = 64'd3000;
    #20
    a = 64'd10000; b = 64'd6545;
    #20
    a = 64'd2525; b = 64'd3560;
    #20
    a = 64'd667; b = 64'd9797979797;
end

initial begin 
    $dumpfile("full_adder_64_bit.vcd");
    $dumpvars(0, test_full_adder_64_bit);
end

initial begin
    $monitor("time = %0t a = %b b = %b carry_in = %b sum = %b carry_out = %b", $time, a, b, cin, sum, cout);
    #100;
    $finish;
end
endmodule