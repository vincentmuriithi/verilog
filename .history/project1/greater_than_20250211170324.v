module greater_than(A,B,F);

input [1:0] A, B;
output F;

//here am using the long method to implement the logic just because am learning

assign F = A[1] & ~B[1] | A[0] & ~B[0] & ~B[1] | A[0] & A[1] & ~B[0];



endmodule