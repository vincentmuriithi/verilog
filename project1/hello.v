module hello(A,B);
input A;
output B;

assign B = A;


endmodule


module test();
reg A;
wire B;

hello hello1(
    .A(A),
    .B(B)
    );

initial begin
    $dumpvars(0, test);

    A = 0;

    #10 A = 1;
    #10 $monitor("B is %b", B);
    A = 0;
    #10 A = 1'b1;
    #10;
    
end

endmodule
