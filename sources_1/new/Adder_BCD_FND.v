`timescale 1ns / 1ps

module Adder_BCD_FND(

    input[3:0] i_A, i_B,

    input[1:0] i_digitSelect,
    input i_en,
    // input[3:0] i_value,
    output [3:0] o_digit,
    output [7:0] o_fndfont
    );

    wire[3:0] w_sum;

    FullAdder_4bit Full_4bit(
       .i_A(i_A),
       .i_B(i_B),
       .o_sum(w_sum)
    );

    BCDtoFND BCDtoFND_value(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .i_value(w_sum),
        .o_digit(o_digit),
        .o_fndfont(o_fndfont)
    );

endmodule
