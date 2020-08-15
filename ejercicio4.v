//Mux 2:1

module Mux2_1(input wire D0, D1, S, output wire Y);

    assign Y = S ? D1 : D0;

endmodule

//Mux 4:1
module Mux4_1(input wire D0, D1, D2, D3, S0, S1, output wire Y);

    wire Y1, Y2;

    Mux2_1 mux0(Y1, D0, D1, S0);
    Mux2_1 mux1(Y2, D2, D3, S0);

    Mux2_1 mux2(Y, Y1, Y2, S1);

endmodule

//Mux 8:1
module Mux8_1(input wire D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output wire Y);

    wire Y1, Y2;

    Mux4_1 mux0(Y1, D0, D1, D2, D3, S1, S2);
    Mux4_1 mux1(Y2, D4, D5, D6, D7, S1, S2);

    Mux2_1 mux2(Y, Y1, Y2, S0);

endmodule

//TABLA 1 MUX 8:1
module Ejercicio1_mux8(input wire A, B, C, output wire Y);

  wire GND, VE;
  assign VE = 1;
  assign GND = 0;

  Mux8_1 mux0(Y, GND, VE, VE, GND, VE, GND, GND, VE, A, B, C);

endmodule

//TABLA 1 MUX 4:1
module Ejercicio1_mux4(input wire A, B, C, output wire Y);

  Mux4_1 mux0(Y, C, ~C, ~C, C, A, B);

endmodule

//TABLA 1 MUX 2:1
module Ejercicio1_mux2(input wire A, B, C, output wire Y);

  Mux2_1 mux0(Y, (B^C), (B~^C), A);

endmodule
