`timescale 1ns / 1ps
module memoriaTB();

wire [2: 0] AddrA;
wire [2: 0] AddrB;
wire [3: 0] DataInA;
wire [3: 0] DataInB;
output wire [3: 0] DataOutA;
output wire [3: 0] DataOutB;
wire rwA;
wire rwB;


  tester t_1(clk, AddrA, AddrB,rwA, rwB, DataInA, DataInB);
  memoria m_1 (clk, AddrA, AddrB, rwA, rwB, DataInA, DataInB, DataOutA, DataOutB);

  initial
    begin
      $dumpfile("memoriaConductual.vcd");
      $dumpvars;
    end

endmodule
