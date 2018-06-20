module Memoria #(             //-- Parametros
         parameter AW = 3,    //-- Bits de las direcciones (Adress width)
         parameter DW = 4)    //-- Bits de los datos (Data witdh)

       (        //-- Puertos
         input clk,                      //-- Señal de reloj global
         input wire [AW-1: 0] AddrA,     //-- Direcciones
         input wire [AW-1: 0] AdrrB,     //-- Direcciones
         input wire rwA,                 //-- Modo lectura (1) o escritura (0)
         input wire rwB,                 //-- Modo lectura (1) o escritura (0)
         input wire [DW-1: 0] DataInA,   //-- Dato de entrada
         input wire [DW-1: 0] DataInB,   //-- Dato de entrada
         output reg [DW-1: 0] DataOutA,  //-- Dato a escribir
         output reg [DW-1: 0] DataOutB); //-- Dato a escribir

//-- Calcular el numero de posiciones totales de memoria
localparam NPOS = 2 ** AW;

  //-- Declaracion de memoria RAM
  reg [DW-1: 0] ram [0: NPOS-1];

  // Port A
	always @ (posedge clk)
	begin
		if (rwA)
		begin
			ram[AddrA] <= DataInA;
			DataOutA <= DataInA;
		end
		else
		begin
			DataOutA <= ram[AddrA];
		end
	end

	// Port B
	always @ (posedge clk)
	begin
		if (rwB)
		begin
			ram[AdrrB] <= DataInB;
			DataOutB <= DataInB;
		end
		else
		begin
			DataOutB <= ram[AdrrB];
		end
	end

endmodule
