module genram #(             //-- Parametros
         parameter AW = 3,   //-- Bits de las direcciones (Adress width)
         parameter DW = 4)   //-- Bits de los datos (Data witdh)

       (        //-- Puertos
         input clk,                      //-- Señal de reloj global
         input wire [AW-1: 0] AddrA,      //-- Direcciones
         input wire [AW-1: 0] AdrrB,
         input wire rwA,                  //-- Modo lectura (1) o escritura (0)
         input wire rwB,                  //-- Modo lectura (1) o escritura (0)
         input wire [DW-1: 0] DataInA,   //-- Dato de entrada
         input wire [DW-1: 0] DataInB,   //-- Dato de entrada
         output reg [DW-1: 0] DataOutA, //-- Dato a escribir
         output reg [DW-1: 0] DataOutB); //-- Dato a escribir

//-- Calcular el numero de posiciones totales de memoria
localparam NPOS = 2 ** AW;

  //-- Memoria
  reg [DW-1: 0] ram [0: NPOS-1];

  //-- Lectura de la memoria
  always @(posedge clk) begin
    if (rw == 1)
    data_out <= ram[addr];
  end

  //-- Escritura en la memoria
  always @(posedge clk) begin
    if (rw == 0)
     ram[addr] <= data_in;
  end



endmodule
