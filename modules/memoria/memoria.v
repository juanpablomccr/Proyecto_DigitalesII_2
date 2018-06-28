`timescale 1ns / 1ps
module memoria(
         input clk,                      //-- Señal de reloj global
         input wire [2: 0] AddrA,     //-- Direcciones
         input wire [2: 0] AddrB,     //-- Direcciones
         input wire rwA,                 //-- Modo lectura (1) o escritura (0)
         input wire rwB,                 //-- Modo lectura (1) o escritura (0)
         input wire [3: 0] DataInA,   //-- Dato de entrada
         input wire [3: 0] DataInB,   //-- Dato de entrada
         output reg [3: 0] DataOutA,  //-- Dato a escribir
         output reg [3: 0] DataOutB); //-- Dato a escribir

//-- Calcular el numero de posiciones totales de memoria
localparam NPOS = 2 ** 3;

  //-- Declaracion de memoria RAM
  reg [4-1: 0] ram [0: NPOS-1];

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
			ram[AddrB] <= DataInB;
			DataOutB <= DataInB;
		end
		else
		begin
			DataOutB <= ram[AddrB];
		end
	end

endmodule
