`timescale 1ns / 1ps
module tester(
        output reg clk,
        output reg rst,
        output reg wr_en,
        output reg rd_en,
        input almostEmpty,
        input almostFull,
        output reg [3: 0] DataIn,
        input [3: 0] DataOut,
        input wire [3: 0] fifo_counter);


reg[3:0] tempdata;
initial
begin
   clk = 0;
   rst = 1;
        rd_en = 0;
        wr_en = 0;
        tempdata = 0;
        DataIn = 0;


        #15 rst = 0;

        push(1);
        push(2);
        pop(tempdata);
        push(3);
        push(4);
        push(5);
        push(6);
        push(7);
        push(8);
        push(9);
        push(10);
        push(11);
        push(12);
        push(13);
        push(14);
        push(15);
        pop(tempdata);
        push(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        push(16);
        pop(tempdata);
        push(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        pop(tempdata);
        push(17);
        pop(tempdata);
        $finish;
end

always
   #5 clk = ~clk;

task push;
input[3:0] data;


   if( almostFull )
            $display("Cannot push: Buffer Almost Full");
        else
        begin
           $display("Pushed",data );
           DataIn = data;
           wr_en = 1;
                @(posedge clk);
                #1 wr_en = 0;
        end

endtask

task pop;
output [3:0] data;

   if( almostEmpty )
            $display("Cannot Pop: Buffer Almost Empty");
   else
        begin

     rd_en = 1;
          @(posedge clk);

          #1 rd_en = 0;
          data = DataOut;
           $display("Poped", data);

        end
endtask

endmodule
