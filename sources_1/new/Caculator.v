`timescale 1ns / 1ps

module Caculator(
    input [3:0] i_A, i_B,
    input [1:0] i_digitSelect,
    input [1:0] i_selOperator,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndfont
    );

    wire[3:0] w_result;

    SimpleCaculator U0(
        .i_A(i_A), .i_B(i_B),
        .i_selOperator(i_selOperator),
        .o_result(w_result)
    );

    BCDtoFND U1(
        .i_digitSelect(i_digitSelect),
        .i_value(w_result),
        .i_en(i_en),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont)
    );
endmodule
