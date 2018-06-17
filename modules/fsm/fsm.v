/*FSM de Control
RESET: Estado de reset, cambia a INIT.
INIT: Forzado mediante señal “init”, permite la modificación de registros “Tabla de Arbitraje” y “Umbrales”. Precedencia sobre IDLE, cambia a IDLE.
IDLE: Todos los FIFOs están vacíos. Salida “idle” en 1 sólo en este estado. Cambia a ACTIVE al tener un FIFO no vacío.
ACTIVE: Modo de transmisión de datos por defecto.
PAUSE: Uno o más FIFOs envían una pausa. Indicar el ID en “pausa”. Tarda un ciclo de reloj y regresa a ACTIVE.
CONTINUE: Uno o más FIFOs envían un continue. Indicar el ID en “continue”. Tarda un ciclo de reloj y regresa a ACTIVE.
ERROR: Escritura y no lectura en uno o más FIFOs cuando están llenos (señal de error). Indicar el ID en “error_full”. Sale hacia RESET únicamente al aplicar reset.
*/

module fsm(
	clk,
	init,
	pause,
	continue,
	idle
);

//Indice de Estados
parameter RESET = 0;
parameter INIT = 1;
parameter IDLE = 2;
parameter ACTIVE = 3;
parameter PAUSE = 4;
parameter CONTINUE = 5;
parameter ERROR = 6;


//codificación one-hot
//8 bits para implementación
reg [7:0] state, next; 

//Inicializacion de variales(Para evitar latches)

//Funcionamiento de la máquina de estados
always@(posedge clk)
	if(rst) begin
		state <= 8'b0;
		state[RESET] <= 1'b1;
	end else state <= next;	

always@(state or init or godown or blh or tlh or halt ) begin
	next = state;
	case (1'b1)
		state[RESET]:	if(init)  	next[IDLE] = 1'b1;
				else 		next[RESET] = 1'b1;

		state[INIT]:	if()  		next[] = 1'b1;
				else 		 next[] = 1'b1;

		state[IDLE]:	if()  		next[] = 1'b1;
				else 		next[] = 1'b1;

		state[ACTIVE]:	if()  		next[] = 1'b1;
				else if()	next[] = 1'b1;
				else 		next[] = 1'b1;

		state[PAUSE]:	if()  		next[] = 1'b1;	
				else if()	next[] = 1'b1;
				else 		next[] = 1'b1;

		state[CONTINUE]:if()  		next[] = 1'b1;	
				else if()	next[] = 1'b1;
				else 		next[] = 1'b1;
		
		state[ERROR]:	if()  		next[] = 1'b1;	
				else if()	next[] = 1'b1;
				else 		next[] = 1'b1;
	endcase
end
end	
endmodule


