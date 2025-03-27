
module array_multiplier_4bit (
    input logic [3:0] A, B,
    output logic [7:0] P
);
    logic [3:0] pp0, pp1, pp2, pp3;
    logic [7:0] sum1, sum2, sum3;

    assign pp0 = A & {4{B[0]}};
    assign pp1 = A & {4{B[1]}};
    assign pp2 = A & {4{B[2]}};
    assign pp3 = A & {4{B[3]}};

    assign sum1 = {pp1, 1'b0} + {1'b0, pp0};
    assign sum2 = {pp2, 2'b00} + {2'b00, sum1};
    assign sum3 = {pp3, 3'b000} + {3'b000, sum2};

    assign P = sum3;
endmodule
