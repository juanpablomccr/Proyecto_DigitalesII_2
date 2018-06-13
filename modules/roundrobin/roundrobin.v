`timescale 1ns/1ps

module roundrobin(
		clk,			//reloj
		rst,			//reset	
		enb,			//enable
		vchanel0
		vchanel1
		vchanel2
		vchanel3
		demux
		rx_Valid,		// Dato Tx o IDLE (1), señal de control (1)
		arbiter,		// contador para manejar salida 
);
 
input wire clk;
input wire rst;
input wire enb;
input reg [1:0] arbiter; 
input wire [3:0] vchanel0;
input wire [3:0] vchanel1;
input wire [3:0] vchanel2;
input wire [3:0] vchanel3;
output reg [3:0] demux;

//variables internas auxiliares

//parametros

parameter [3:0] INACTIVE = 4'b00;
parameter [1:0]  VCHANEL0 = 2'b00;
parameter [1:0]  VCHANEL1 = 2'b01;
parameter [1:0]  VCHANEL2 = 2'b10;
parameter [1:0]  VCHANEL3 = 2'b11;


//case para asigna
//dada por el

always@( posedge clk) begin
	if(rst) begin
		demux <= INACTIVE;
		arbiter <= 2'b00;
	end else if(!rst && enb ) begin
							
		case (arbiter)					
			VCHANEL0: begin			
			repeat (1) demux <= vchanel0 ;			
			end
			VCHANEL1: begin
			repeat (2) demux <= vchanel1;
			end			
			VCHANEL2: begin
			repeat (3) demux <= vchanel2;
			end
			VCHANEL3: begin
				o
			repeat (4) demux <= vchanel3;
			end	
		endcase
	end


end
endmodule


