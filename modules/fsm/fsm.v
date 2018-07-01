/*FSM de Control
RESET: Estado de reset, cambia a INIT.
INIT: Forzado mediante señal “init”, permite la modificación de registros
“Tabla de Arbitraje” y “Umbrales”. Precedencia sobre IDLE, cambia a IDLE.
IDLE: Todos los FIFOs están vacíos. Salida “idle” en 1 sólo en este estado.
Cambia a ACTIVE al tener un FIFO no vacío.
ACTIVE: Modo de transmisión de datos por defecto.
PAUSE: Uno o más FIFOs envían una pausa. Indicar el ID en “pausa”. Tarda un 
ciclo de reloj y regresa a ACTIVE.
CONTINUE: Uno o más FIFOs envían un continue. Indicar el ID en “continue”. 
Tarda un ciclo de reloj y regresa a ACTIVE.
ERROR: Escritura y no lectura en uno o más FIFOs cuando están llenos (señal de
error). Indicar el ID en “error_full”. Sale hacia RESET únicamente al aplicar
reset.
*/

module fsm(
	clk,
	init,
	pause,
	continue,
	idle,
	emty_vc0,
	emty_vc1,
	emty_vc2,
	emty_vc3,
	in_sttp_vc0,
	in_sttp_vc1,
	in_sttp_vc2,
	in_sttp_vc3,
	cntn_vchanel0,
	cntn_vchanel1,
	cntn_vchanel2,
	cntn_vchanel3
	err_vchanel0,
	err_vchanel1,
	err_vchanel2,
	err_vchanel3,

);

//Indice de Estados
parameter RESET = 0;
parameter INIT = 1;
parameter IDLE = 2;
parameter ACTIVE = 3;
parameter PAUSE = 4;
parameter CONTINUE = 5;
parameter ERROR = 6;
parameter ON = 1'b1
parameter OFF = 1'b0
parameter VCHANEL0 = 4'b0000;
parameter VCHANEL1 =
parameter VCHANEL2 =
parameter VCHANEL3 =
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
always 
always@(state or init or godown or blh or tlh or halt ) begin
	next = state;
	case (1'b1)
	state[RESET]:	begin
			if(init) begin 
				next[INIT] = 1'b1;
			end else begin
				next[RESET] = 1'b1;
			end
		end
	state[INIT]:	begin
	       		if(init) begin
				next[INIT] = 1'b1;
			end else begin
				next[IDLE] = 1'b1;
			end
		end
	state[IDLE]:	begin 
			if(empty_vchanel0 &
			empty_vchanel1 &
			empty_vchanel2 &
			empty_vchanel3) begin
				next[IDLE] = 1'b1;
				idle <= 1'b1;
			end else begin		
		 		next[ACTIVE] = 1'b1;
				idle <= 1'b0;
			end
		end
	state[ACTIVE]:	begin
			if(!empty_vchanel0 |
			!empty_vchanel1 |
			!empty_vchanel2 |
			!empty_vchanel3 |
	       		!in_sttp_vchanel0 |
			!in_sttp_vchanel1 |
			!in_sttp_vchanel2 |
			!in_sttp_vchanel3 |
			!cntn_vchanel0 |		
			!cntn_vchanel1 |	      
			!cntn_vchanel2 |	      
			!cntn_vchanel3 ) begin 
				next[ACTIVE] = 1'b1;
				idle <= 1'b0;
			end else if (in_sttp_vchanel0 |
			in_sttp_vchanel1 |
			in_sttp_vchanel2 |
			in_sttp_vchanel3 ) begin
				next[PAUSE] = 1'b1;
				if(in_sttp_vchanel0)
				
				else if(in_sttp_vchanel1)
				else if(in_sttp_vchanel2)
				else if(in_sttp_vchanel3)
			end
			end else if (cntn_vchanel0 |
			cntn_vchanel1 |
			cntn_vchanel2 |
			cntn_vchanel3 ) begin
				next[CONTINUE] = 1'b1;

			end
			end else if (empty_vchanel0 |
			empty_vchanel1 |
			empty_vchanel2 |
			empty_vchanel3 ) begin
				next[IDLE] = 1'b1;
			end
			end else if ( 
			err_vchanel0 |
			err_vchanel1 |
			err_vchanel2 |
			err_vchanel3 ) begin
				next[ERROR] = 1'b1;
			end
		end
	state[PAUSE]:	next[ACTIVE] = 1'b1;	
	state[CONTINUE]:next[ACTIVE] = 1'b1;
	state[ERROR]:	begin 
			if(
			err_vchanel0 |
			err_vchanel1 |
			err_vchanel2 |
			err_vchanel3 ) begin
				next[ERROR] = 1'b1;	
			else if(rst)	next[RESET] = 1'b1;
	endcase
end
end	
endmodule


