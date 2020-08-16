//Mux 2:1

module Mux2_1(input wire D0, D1, S, output wire OUT);

    assign OUT = S ? D1 : D0;

endmodule

//Mux 4:1
module Mux4_1(input wire D0, D1, D2, D3, S0, S1, output wire OUT);

    wire OUT1, OUT2;

    Mux2_1 mux0(D0, D1, S1, OUT1);
    Mux2_1 mux1(D2, D3, S1, OUT2);

    Mux2_1 mux2(OUT1, OUT2, S0, OUT);

endmodule

//Mux 8:1
module Mux8_1(input wire D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output wire OUT);

    wire OUT1, OUT2;

    Mux4_1 mux0(D0, D1, D2, D3, S1, S2, OUT1);
    Mux4_1 mux1(D4, D5, D6, D7, S1, S2, OUT2);

    Mux2_1 mux2(OUT1, OUT2, S0, OUT);

endmodule

//TABLA 1 MUX 8:1
module Ejercicio1_mux8(input wire A, B, C, output wire OUT);

  wire GND, VE;
  assign VE = 1;
  assign GND = 0;

  Mux8_1 mux0(GND, VE, VE, GND, VE, GND, GND, VE, A, B, C, OUT);

endmodule

//TABLA 1 MUX 4:1
module Ejercicio1_mux4(input wire A, B, C, output wire OUT);
  wire NC;
  assign NC = ~C;

  Mux4_1 mux0(C, NC, NC, C, A, B, OUT);

endmodule

//TABLA 1 MUX 2:1
module Ejercicio1_mux2(input wire A, B, C, output wire OUT);

  wire O1, O2;
  assign O1 = B^C;
  assign O2 = B~^C;

  Mux2_1 mux0(O1, O2 ,A, OUT);

endmodule


//TABLA 2 MUX 8:1
module Ejercicio2_mux8(input wire A, B, C, output wire OUT);

  wire GND, VE;
  assign VE = 1;
  assign GND = 0;

  Mux8_1 mux0(VE, GND, GND, GND, GND, VE, VE, GND, A, B, C, OUT);

endmodule

//TABLA 2 MUX 4:1
module Ejercicio2_mux4(input wire A, B, C, output wire OUT);
  wire NC, GND;
  assign NC = ~C;
  assign GND = 0;

  Mux4_1 mux0(NC, GND, C, NC, A, B, OUT);

endmodule

//TABLA 2 MUX 2:1
module Ejercicio2_mux2(input wire A, B, C, output wire OUT);

  wire O1, O2;
  assign O1 = B^C;
  assign O2 = B~|C;

  Mux2_1 mux0(O2, O1, A, OUT);

endmodule
