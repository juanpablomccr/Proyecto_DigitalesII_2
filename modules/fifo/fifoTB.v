`timescale 1ns / 1ps
module fifoTB();

wire [3: 0] DataIn;
output wire [3: 0] DataOut;
wire wr_en;
wire rd_en;
wire [3: 0] fifo_counter;



  tester t_1(clk, rst, wr_en, rd_en, almostEmpty, almostFull, DataIn, DataOut, fifo_counter);
  fifo f_1 (clk, rst, wr_en, rd_en, almostEmpty, almostFull, DataIn, DataOut, fifo_counter);

  initial
    begin
      $dumpfile("fifoConductual.vcd");
      $dumpvars;
    end

endmodule
