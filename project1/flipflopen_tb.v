`timescale 1ns / 1ns
`include "flipflopen.v"

module testEn;

reg D = 0, En = 0, CLK = 0;
wire Q;

enflipflop uut(D, En, CLK, Q);

always begin
    CLK = ~CLK;
    #10;
end

initial begin
    $dumpfile("flipflopen.vcd");
    $dumpvars(0, testEn);

    En = 0; #40;
    D = 0; #40;
    D = 1; #40;
    D = 0; #40;

    En = 0; #40;
    D = 0; #40;
    D = 1; #40;
    D = 0; #40;

    $finish;

end
endmodule