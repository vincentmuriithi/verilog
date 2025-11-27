`include "full_adder.v"

module full_adder_8_bit(sum, carry_out, carry_in, A, B);
input [7:0] A, B;
output [7:0] sum;
input carry_in;
output carry_out;

wire c1, c2, c3, c4, c5, c6, c7;

full_adder adder0(sum[0], c1, A[0], B[0], carry_in);
full_adder adder1(sum[1], c2, A[1], B[1], c1);
full_adder adder2(sum[2], c3, A[2], B[2], c2);
full_adder adder3(sum[3], c4, A[3], B[3], c3);
full_adder adder4(sum[4], c5, A[4], B[4], c4);
full_adder adder5(sum[5], c6, A[5], B[5], c5);
full_adder adder6(sum[6], c7, A[6], B[6], c6);
full_adder adder7(sum[7], carry_out, A[7], B[7], c7);
endmodule


module full_adder_64_bit(sum, carry_out, carry_in, A, B);
input [63:0] A, B;
output [63:0] sum;
input carry_in;
output carry_out;

wire c1, c2, c3, c4, c5, c6, c7;

full_adder_8_bit adder0(sum[7:0], c1, carry_in, A[7:0], B[7:0]);
full_adder_8_bit adder1(sum[15:8], c2, c1, A[15:8], B[15:8]);
full_adder_8_bit adder2(sum[23:16], c3, c2,A[23:16], B[23:16]);
full_adder_8_bit adder3(sum[31:24], c4, c3, A[31:24], B[31:24]);
full_adder_8_bit adder4(sum[39:32], c5, c4, A[39:32], B[39:32]);
full_adder_8_bit adder5(sum[47:40], c6, c5, A[47:40], B[47:40]);
full_adder_8_bit adder6(sum[55:48], c7, c6, A[55:48], B[55:48]);
full_adder_8_bit adder7(sum[63:56], carry_out, c7, A[63:56], B[63:56]);
endmodule