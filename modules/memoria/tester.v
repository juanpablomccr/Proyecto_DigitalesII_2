module Tester#(             //-- Parametros
         parameter AW = 3,   //-- Bits de las direcciones (Adress width)
         parameter DW = 4)   //-- Bits de los datos (Data witdh)

       (        //-- Puertos
         output reg clk,                      //-- Señal de reloj global
         output reg [AW-1: 0] AddrA,      //-- Direcciones
         output reg [AW-1: 0] AdrrB,
         output reg rwA,                  //-- Modo lectura (1) o escritura (0)
         output reg rwB,                  //-- Modo lectura (1) o escritura (0)
         output reg [DW-1: 0] DataInA,   //-- Dato de entrada
         output reg [DW-1: 0] DataInB);   //-- Dato de entrada


          //Se setea el clock
           always
              begin
                #4 CLK <= ~CLK;
              end
            initial


           //Valores iniciales
           begin
             D<=1000;
             CLK=0;
             DIR<=0;
             MODE<=2'b10;
             ENB<=1;
             S_IN=0;

          // Prueba 1 Data A in
          ENB =1;
          MODE<=2'b10;
          #8

       	  DIR <=0;S_IN<=1;
       	  MODE<=2'b00;
          #32

       	  // Prueba 2 Data B in
       	  ENB =1;
          MODE<=2'b10;
          #8

       	  DIR <=1;S_IN<=0;
       	  MODE<=2'b00;
          #32

          // Prueba 3 Data out B
          DIR <=0;S_IN<=1;
          MODE<=2'b01;
          #32

       	  // Prueba 4 Data out A
       	  ENB =1;
          MODE<=2'b10;
          #8
       	  DIR <=1;
       	  MODE<=2'b01;
          #32



              $finish;
           end


endmodule
