module half_adder(sum, carry, A, B);
output sum, carry;
input A, B;

assign sum = A^B;
assign carry = A&B;
endmodule

module full_adder(sum, carry, A, B, C);
output sum, carry;
input A, B, C;
wire sum1, carry1, carry2;

half_adder h0(sum1, carry1, A, B);
half_adder h1(sum, carry2, sum1, C);
or carry_out(carry, carry1, carry2);
endmodule