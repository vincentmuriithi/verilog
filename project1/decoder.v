// 2-4 line decoder
// 4 AND Gates on the output
// 2x 1-to-2 line decoders

module decoder2to4(A, D);
input [1:0] A;
output [3:0] D;

wire [3:0] W;

decoder1to2 dec1 (A[0], W[3:2]);

endmodule



module decoder1to2(A,D);

input A;
output [1:0] D;

assign D[0] = ~A;
assign D[1] = A;


endmodule