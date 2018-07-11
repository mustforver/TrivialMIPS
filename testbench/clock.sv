`include "common_defs.svh"
`timescale 1ps / 1ps

module clock(
    output Clock_t clk
);
    initial begin
        clk._11M0592 = 1;
        clk._50M = 1;
        clk.base = 1;
        clk.base_2x = 1;
        clk._10M = 1;
    end

    initial begin
        clk.rst = 1'b1;
        # 50000 clk.rst = 1'b0;
    end

    always #10000   clk._50M = ~clk._50M;
    always #12500   clk.base = ~clk.base;
    always #6250    clk.base_2x = ~clk.base_2x;
    always #45211   clk._11M0592 = ~clk._11M0592;
    always #50000   clk._10M = ~clk._10M;


endmodule

`timescale 1ns / 1ps