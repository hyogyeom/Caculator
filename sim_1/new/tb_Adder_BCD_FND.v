`timescale 1ns / 1ps


module tb_Adder_BCD_FND();

    reg[3:0] i_A, i_B;

    reg[1:0] i_digitSelect;
    reg i_en;
    wire [3:0] o_digit;
    wire [7:0] o_font;



    Adder_BCD_FND dut(
       .i_A(i_A),
       .i_B(i_B),
       .i_digitSelect(i_digitSelect),
       .i_en(i_en),
       .o_digit(o_digit),
       .o_font(o_font)
    );

    initial begin
        #00 i_A = 4'd1; i_B = 4'd1;  i_digitSelect = 2'd0; i_en = 1'd0;
        #10 i_A = 4'd1; i_B = 4'd1;  i_digitSelect = 2'd0; i_en = 1'd0;
        #10 i_A = 4'd2; i_B = 4'd2;  i_digitSelect = 2'd0; i_en = 1'd0;
        #10 i_A = 4'd3; i_B = 4'd3;  i_digitSelect = 2'd0; i_en = 1'd0;
        #10 i_A = 4'd4; i_B = 4'd4;  i_digitSelect = 2'd0; i_en = 1'd0;


        #10 i_A = 4'd1; i_B = 4'd1;  i_digitSelect = 2'd0; i_en = 1'd1;
        #10 $finish;
    end
endmodule