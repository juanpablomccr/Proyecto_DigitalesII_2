module tester#(             //-- Parametros
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
                #4 clk <= ~clk;
              end
            initial


           //Valores iniciales
           begin
             CLK=0;
             rwA<=0;
             rwB<=0;
             AddrA<=2'b10;
             AdrrB<=2'b10;
             DataInA<=4'b1001;
             DataInB<=4'b1010;


          // Prueba 1 Data A in
          rwA<=0;
          AddrA<=2'b10;
          #8
          DataInA<=4'b1001;
          #32

       	  // Prueba 2 Data B in
          rwA<=0;
          AddrA<=2'b10;
          #8
       	  DataInB<=4'b1010;
          #32

          // Prueba 3 Data out B
          rwA<=0;
          AddrA<=2'b10;
          #32

       	  // Prueba 4 Data out A
          rwA<=1;
          AddrB<=2'b10;
          #32



              $finish;
           end


endmodule
