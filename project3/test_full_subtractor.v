`timescale 1ns/1ns
`include "full_subtractor.v"

module test_full_subtractor;
reg a, b, c;
wire difference, Bout;
integer count;

full_subtractor dut(
    .difference(difference),
    .Bin(c),
    .A(a),
    .B(b),
    .Bout(Bout)
);

initial begin
    a = 0; b = 0; c = 0;
end

initial begin
    for (count = 0; count < 8; count++) begin
        {a, b, c} = count;
        #10;
    end
end

initial begin
    $dumpfile("./waveforms/full_subtractor.vcd");
    $dumpvars(0, test_full_subtractor);
end

initial begin
    $monitor("Time = %0t, a = %b, b = %b, Bin = %b, Difference = %b, Borrow_out = %b", $time, a, b, c, difference, Bout);
    #120;
    $finish;
end

endmodule