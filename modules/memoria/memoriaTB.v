`timescale 1ns / 1ps
module memoriaTB();

  input wire [1:0] MODE;
  wire [3:0] D;
  wire [3:0] Q;


  Tester T_1(CLK,ENB,DIR,S_IN,MODE,D);
  R4B R4B_1 (S_OUT,CLK,ENB,DIR,S_IN,MODE,D,Q);
