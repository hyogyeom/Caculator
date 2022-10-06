`timescale 1ns / 1ps

module FullAdder_4bit(  
    input[3:0] i_A, i_B,   // i_A[3:0] = i_A[3], i_A[2], i_A[1], i_A[0]
    input i_Cin,
    output[3:0] o_sum,
    output o_carry
    );

    wire w_carry_0, w_carry_1, w_carry_2;

    FullAdder FA_0(
        .i_A(i_A[0]),
        .i_B(i_B[0]),
        .i_C(i_Cin),
        .o_sum(o_sum[0]),
        .o_carry(w_carry_0)
        );
    
    FullAdder FA_1(
        .i_A(i_A[1]),
        .i_B(i_B[1]),
        .i_C(w_carry_0),
        .o_sum(o_sum[1]),
        .o_carry(w_carry_1)
    );
    FullAdder FA_2(
        .i_A(i_A[2]),
        .i_B(i_B[2]),
        .i_C(w_carry_1),
        .o_sum(o_sum[2]),
        .o_carry(w_carry_2)
    );
    FullAdder FA_3(
        .i_A(i_A[3]),
        .i_B(i_B[3]),
        .i_C(w_carry_2),
        .o_sum(o_sum[3]),
        .o_carry(o_carry)
    );


endmodule