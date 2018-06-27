`timescale 1ns / 1ps
module memoriaTB();

  input wire [1:0] MODE;
  wire [3:0] D;
  wire [3:0] Q;


  tester t_1(clk, AddrA, AdrrB,rwA, rwB, DataInA, DataInB);
  memoria m_1 (clk, AddrA, AddrB, rwA, rwB, DataInA, DataInB, DataOutA, DataOutB);

  initial
    begin
      $dumpfile("Verificador.vcd");
    end

endmodule
