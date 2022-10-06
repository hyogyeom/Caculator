
`timescale 1ns / 1ps

module SimpleCaculator(
    input [3:0] i_A, i_B,
    input [1:0] i_selOperator,
    output [3:0] o_result
    );

    reg [3:0] r_result;
    assign o_result = r_result;

    always @(*) begin
        case (i_selOperator) 
            2'b00 : r_result = i_A + i_B;
            2'b01 : r_result = i_A - i_B;
            2'b10 : r_result = i_A * i_B;
            2'b11 : begin
                if (i_B == 0) r_result = 0;
                else r_result = i_A / i_B;
            end
        endcase
    end
endmodule