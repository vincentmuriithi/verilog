module enflipflop(D, En, CLK, Q);

input D, En, CLK;
output reg Q;

always@(posedge CLK)
begin
    if(En) Q = D;
end
endmodule