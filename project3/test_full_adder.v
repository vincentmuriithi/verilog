`timescale 1ns/1ns

`include "full_adder.v"

module test_full_adder;
reg a, b, c;
wire sum, carry;
integer value;

full_adder adder(sum, carry, a, b, c);

initial begin
    a = 0; b = 0; c = 0;
end

initial begin
    for (value=0; value < 8; value++) begin
        {a, b, c} = value;
        #10;
    end
end

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, test_full_adder);
end

initial begin
    $monitor("time = %0t a = %b b = %b Cin = %b sum = %b carry = %b", $time, a, b, c, sum, carry);
    #120;
     $finish;
end


endmodule