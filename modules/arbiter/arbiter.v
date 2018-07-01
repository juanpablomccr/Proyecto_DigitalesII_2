module arbiter(
	clk,
	rst,
	enb,
	empty_vchannel0,
	empty_vchannel1,
	empty_vchannel2,
	empty_vchannel3,	
	arbiter_input,
	valid_channel,
	rndrobin_input
);


input wire clk;
input wire rst;
input wire enb;
input wire empty_vchannel0;
input wire empty_vchannel1;
input wire empty_vchannel2;
input wire empty_vchannel3;	
input wire [1:0] arbiter_input;
output reg [3:0] valid_channel;
output reg [1:0] rndrobin_input;

//parametros
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;
parameter ON = 1'b1;
parameter OFF = 1'b0;

//inicialización de variables para evitar LATCHES
initial begin
rndrobin_input = VCHANEL0;
valid_channel = 4'b0000;
end
//Asignacion de las prioridades para el round robin. La tabla de arbitraje
//es alimentada a este modulo desde el arbiter_interface
always@(posedge clk) begin
	case(arbiter_input)					
	VCHANEL0: begin 
		rndrobin_input <= arbiter_input;
		valid_channel[0] = !empty_vchannel0 ? ON:OFF;		
		valid_channel[1] = !empty_vchannel1 ? ON:OFF;		
		valid_channel[2] = !empty_vchannel2 ? ON:OFF;		
		valid_channel[3] = !empty_vchannel3 ? ON:OFF;		
	end
	VCHANEL1: begin 
		rndrobin_input <= arbiter_input;
		valid_channel[0] = !empty_vchannel0 ? ON:OFF;		
		valid_channel[1] = !empty_vchannel1 ? ON:OFF;		
		valid_channel[2] = !empty_vchannel2 ? ON:OFF;		
		valid_channel[3] = !empty_vchannel3 ? ON:OFF;		
	end
	VCHANEL2: begin 
		rndrobin_input <= arbiter_input;
		valid_channel[0] = !empty_vchannel0 ? ON:OFF;		
		valid_channel[1] = !empty_vchannel1 ? ON:OFF;		
		valid_channel[2] = !empty_vchannel2 ? ON:OFF;		
		valid_channel[3] = !empty_vchannel3 ? ON:OFF;		

	end
	VCHANEL3: begin 
		rndrobin_input <= arbiter_input;
		valid_channel[0] <= !empty_vchannel0 ? ON:OFF;		
		valid_channel[1] <= !empty_vchannel1 ? ON:OFF;		
		valid_channel[2] <= !empty_vchannel2 ? ON:OFF;		
		valid_channel[3] <= !empty_vchannel3 ? ON:OFF;		

	end
	endcase
end


endmodule
