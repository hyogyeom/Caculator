`timescale 1ns / 1ps

module FND_Select_Decoder(
    input[1:0] i_digitSelect,  // 2bit
    input i_en,
    output[3:0] o_digit  // 4bit
    );
    // reg 메모리 기능 input,output은 wire(전선) 타입임 
    // 전선에 메모리 기능 말 x
    reg[3:0] r_digit;  
    
    assign o_digit = r_digit;

    always @(i_digitSelect, i_en) begin  // 항상 () 안에 것을 바라보고있다 , 입력을 바라보고있다 ( , 랑 or 둘 다 가능)
        if(i_en) begin  // en = 1이면 
            r_digit = 4'b1111;  // 4'b1111 을 o_digit에 값을 넣어라
        end

        else begin  // i_en = 0이면
            case (i_digitSelect)  // 입력에 따라 출력 위치 설정? 
                2'h0 : r_digit = 4'b1110;
                2'h1 : r_digit = 4'b1101;
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end

        
    end



endmodule
