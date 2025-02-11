// 2-4 line decoder
// 4 AND Gates on the output
// 2x 1-to-2 line decoders

module decoder1to2(A,D);

input A;
output [1:0] D;

assign D[0] = ~A;
assign D[1] = A;


endmodule