`timescale 1ns/1ps
module roundrobin(
		clk,			
		rst,			
		enb,		
		valid_channel,
		pop_vchannel0, 
		pop_vchannel1, 
		pop_vchannel2, 
		pop_vchannel3, 
		arbiter,	
		wghtd_output
);
 
input wire clk;
input wire rst;
input wire enb;
input wire [1:0] arbiter; 
input wire [3:0] pop_vchannel0;
input wire [3:0] pop_vchannel1;
input wire [3:0] pop_vchannel2;
input wire [3:0] pop_vchannel3;
input wire [3:0] valid_channel;
output reg [3:0] wghtd_output;

//para poder decidir que hacer en caso de que el canal al que se le da priori-
//dad
//parametros//
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;
parameter  VALID =    1'b1; 
parameter  INVALID =  1'b0;

parameter [3:0] EMPTY = 4'b0000;

//variable auxiliar para almacenar el canal anterior
//El comportamiento por defecto cuando llega prioridad a un canal vacio es
//el de pasar el canal0, sinoe el uno y asi sucesivamente hast alcanzar el
//canal3
initial begin
wghtd_output <= EMPTY ;
end
always@( posedge clk) begin
	if(rst) begin
	wghtd_output <= EMPTY ;
	
	end else if(!rst && enb ) begin
						
	case (arbiter)					
	VCHANEL0: begin 
		if(valid_channel[0]==1'b1) begin
		wghtd_output <= pop_vchannel0; 
		end else if(valid_channel[1]==1'b1) begin
		wghtd_output <= pop_vchannel1; 
		end else if(valid_channel[2]==1'b1) begin
		wghtd_output <= pop_vchannel2; 
		end else if(valid_channel[3]==1'b1) begin
		wghtd_output <= pop_vchannel3; 
		end else if(valid_channel==4'b0000)begin
		wghtd_output <=  EMPTY;
		end
	end
	VCHANEL1: begin
		if(valid_channel[1]==1'b1) begin
		wghtd_output <= pop_vchannel1; 
		end else if(valid_channel[0]==1'b1) begin
		wghtd_output <= pop_vchannel0; 
		end else if(valid_channel[2]==1'b1) begin
		wghtd_output <= pop_vchannel2; 
		end else if(valid_channel[3]==1'b1) begin
		wghtd_output <= pop_vchannel3; 
		end else if(valid_channel==4'b0000)begin
		wghtd_output <=  EMPTY;
		end
	end
	VCHANEL2: begin
		if(valid_channel[2]==1'b1) begin
		wghtd_output <= pop_vchannel2; 
		end else if(valid_channel[1]==1'b1) begin
		wghtd_output <= pop_vchannel1; 
		end else if(valid_channel[2]==1'b1) begin
		wghtd_output <= pop_vchannel2; 
		end else if(valid_channel[3]==1'b1) begin
		wghtd_output <= pop_vchannel3; 
		end else if(valid_channel==4'b0000)begin
		wghtd_output <=  EMPTY;
		end
	end
	VCHANEL3: begin 
		if(valid_channel[3]==1'b1) begin
		wghtd_output <= pop_vchannel3; 
		end else if(valid_channel[0]==1'b1) begin
		wghtd_output <= pop_vchannel0; 
		end else if(valid_channel[1]==1'b1) begin
		wghtd_output <= pop_vchannel1; 
		end else if(valid_channel[2]==1'b1) begin
		wghtd_output <= pop_vchannel2; 
		end else if(valid_channel==4'b0000)begin
		wghtd_output <=  EMPTY;
		end
	end
	endcase
	end


end
endmodule


