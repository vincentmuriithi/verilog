`timescale 1ns / 1ns
`include "code1.v"

module decoder5to32_tb;

reg [4:0] A;
wire [31:0] D;

decoder5to32 uut(A, D);
integer i;
initial begin 
    $dumpfile("decoder5to32.vcd");
    $dumpvars(0, decoder5to32_tb);

    for (i = 0; i < 32; i= i + 1) begin
        A = i; #20;
    end
end

endmodule