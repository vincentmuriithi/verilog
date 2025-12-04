module full_subtractor(difference, Bout, A, B, Bin);
input A, B, Bin;
output difference, Bout;

assign difference = A ^ B ^ Bin;
assign Bout = (~A & Bin) | (~A & B) | (B & Bin);

endmodule