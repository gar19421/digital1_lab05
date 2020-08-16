module testbench();

  reg r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18;
  wire out1, out2, out3, out4, out5, out6;

  Ejercicio1_mux2 mux0(r1, r2, r3, out1);
  Ejercicio1_mux4 mux1(r4, r5, r6, out2);
  Ejercicio1_mux8 mux2(r7, r8, r9, out3);
  Ejercicio2_mux2 mux3(r10, r11, r12, out4);
  Ejercicio2_mux4 mux4(r13, r14, r15, out5);
  Ejercicio2_mux8 mux5(r16, r17, r18, out6);

  initial begin
    $display(" tabla 1 - mux 2:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r1, r2, r3, out1);
    r1 = 0; r2 = 0; r3=0;
    #1 r3 = 1;
    #1 r2 = 1; r3 = 0;
    #1 r3 = 1;
    #1 r1 = 1; r2 = 0; r3 = 0;
    #1 r3 = 1;
    #1 r2 = 1; r3 = 0;
    #1 r3 = 1;
  end

  initial begin
    #10
    $display("\n tabla 1 - mux 4:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r4, r5, r6, out2);
    r4 = 0; r5 = 0; r6=0;
    #1 r6 = 1;
    #1 r5 = 1; r6 = 0;
    #1 r6 = 1;
    #1 r4 = 1; r5 = 0; r6 = 0;
    #1 r6 = 1;
    #1 r5 = 1; r6 = 0;
    #1 r6 = 1;
  end

  initial begin
    #20
    $display("\n tabla 1 - mux 8:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r7, r8, r9, out3);
    r7 = 0; r8 = 0; r9=0;
    #1 r9 = 1;
    #1 r8 = 1; r9 = 0;
    #1 r9 = 1;
    #1 r7 = 1; r8 = 0; r9 = 0;
    #1 r9 = 1;
    #1 r8 = 1; r9 = 0;
    #1 r9 = 1;
  end

  initial begin
    #30
    $display("\n tabla 2 - mux 2:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r10, r11, r12, out4);
    r10 = 0; r11 = 0; r12=0;
    #1 r12 = 1;
    #1 r11 = 1; r12 = 0;
    #1 r12 = 1;
    #1 r10 = 1; r11 = 0; r12 = 0;
    #1 r12 = 1;
    #1 r11 = 1; r12 = 0;
    #1 r12 = 1;
  end

  initial begin
    #40
    $display("\n tabla 2 - mux 4:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r13, r14, r15, out5);
    r13 = 0; r14 = 0; r15=0;
    #1 r15 = 1;
    #1 r14 = 1; r15 = 0;
    #1 r15 = 1;
    #1 r13 = 1; r14 = 0; r15 = 0;
    #1 r15 = 1;
    #1 r14 = 1; r15 = 0;
    #1 r15 = 1;
  end

  initial begin
    #50
    $display("\n tabla 2 - mux 8:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", r16, r17, r18, out6);
    r16 = 0; r17 = 0; r18=0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
    #1 r16 = 1; r17 = 0; r18 = 0;
    #1 r18 = 1;
    #1 r17 = 1; r18 = 0;
    #1 r18 = 1;
  end

  initial
    #60 $finish;

  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
