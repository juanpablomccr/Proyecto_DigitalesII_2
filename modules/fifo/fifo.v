`timescale 1ns / 1ps
module fifo(
        input clk,
        input rst,
        input wr_en,
        input rd_en,
        output reg almostEmpty,
        output reg almostFull,
        input wire [3: 0] DataIn,
        output reg [3: 0] DataOut,
        output reg [3: 0] fifo_counter);


localparam NPOS = 2 ** 3;
reg [4-1: 0] ram [0: NPOS-1];
reg[2:0] rd_ptr;
reg[2:0] wr_ptr;
always @(fifo_counter)
begin
   almostEmpty = (fifo_counter<=2);
   almostFull = (fifo_counter>=6);

end

always @(posedge clk or posedge rst)
begin
   if( rst )
       fifo_counter <= 0;

   else if( (!almostFull && wr_en) && ( !almostEmpty && rd_en ) )
       fifo_counter <= fifo_counter;

   else if( !almostFull && wr_en )
       fifo_counter <= fifo_counter + 1;

   else if( !almostEmpty && rd_en )
       fifo_counter <= fifo_counter - 1;
   else
      fifo_counter <= fifo_counter;
end

always @( posedge clk or posedge rst)
begin
   if( rst )
      DataOut <= 0;
   else
   begin
      if( rd_en && !almostEmpty )
         DataOut <= ram[rd_ptr];

      else
         DataOut <= DataOut;

   end
end

always @(posedge clk)
begin

   if( wr_en && !almostFull )
      ram[ wr_ptr ] <= DataIn;

   else
      ram[ wr_ptr ] <= ram[ wr_ptr ];
end

always@(posedge clk or posedge rst)
begin
   if( rst )
   begin
      wr_ptr <= 0;
      rd_ptr <= 0;
   end
   else
   begin
      if( !almostFull && wr_en )    wr_ptr <= wr_ptr + 1;
          else  wr_ptr <= wr_ptr;

      if( !almostEmpty && rd_en )   rd_ptr <= rd_ptr + 1;
      else rd_ptr <= rd_ptr;
   end

end
endmodule
