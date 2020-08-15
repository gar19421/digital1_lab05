module testbench();

  reg r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26,r27, r28;
  wire out1, out2, out3, out4, out5, out6, out7, out8;

  Ejercicio1_mux8 mux0(r1, r2, r3, out1);

  initial begin
    $display(" tabla 1 - mux 8:1");
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


  initial
    #10 $finish;

  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
