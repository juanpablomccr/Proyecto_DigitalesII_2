`timescale 1ns / 1ps
module tester#(             //-- Parametros
         parameter AW = 3,   //-- Bits de las direcciones (Adress width)
         parameter DW = 4)   //-- Bits de los datos (Data witdh)

       (        //-- Puertos
             output reg clk,                      //-- Señal de reloj global
             output reg [AW-1: 0] AddrA,      //-- Direcciones
             output reg [AW-1: 0] AddrB,
             output reg rwA,                  //-- Modo lectura (1) o escritura (0)
             output reg rwB,                  //-- Modo lectura (1) o escritura (0)
             output reg [DW-1: 0] DataInA,   //-- Dato de entrada
             output reg [DW-1: 0] DataInB);   //-- Dato de entrada


          //Se setea el clock
always
  begin
    #4 clk <= ~clk;
  end

           //Valores iniciales
initial begin
             clk=0;
             rwA<=0;
             rwB<=0;
        


          // Prueba 1 Data A in
          rwA<=1;
          AddrA<=2'b10;
          #8
          DataInA<=4'b1001;
          #32

          // Prueba 2 Data out A
          rwA<=0;
          AddrA<=2'b10;
          #32

          // Prueba 3 Data out A
          rwA<=0;
          AddrA<=2'b00;
          #32

       	  // Prueba 4 Data B in
          rwB<=1;
          AddrB<=2'b11;
          #8
       	  DataInB<=4'b1010;
          #32

          // Prueba 5 Data out B
          rwB<=0;
          AddrB<=2'b10;
          #32

          // Prueba 6 Data out B
          rwB<=0;
          AddrB<=2'b11;
          #32




$finish;
end
endmodule
