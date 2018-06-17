`timescale 1ns/1ps
module roundrobin(
		clk,			
		rst,			
		enb,		
		empty_vchanel0, 
		empty_vchanel1, 
		empty_vchanel2, 
		empty_vchanel3, 
		out_vchanel0, 
		out_vchanel1, 
		out_vchanel2, 
		out_vchanel3, 
		out_wghtd_rndrobin,
		arbiter	
);
 
input wire clk;
input wire rst;
input wire enb;
input wire [1:0] arbiter; 
input wire empty_vchanel0;
input wire empty_vchanel1;
input wire empty_vchanel2;
input wire empty_vchanel3;
input wire [3:0] out_vchanel0;
input wire [3:0] out_vchanel1;
input wire [3:0] out_vchanel2;
input wire [3:0] out_vchanel3;
output reg [3:0] out_wghtd_rndrobin;

//parametros
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;
parameter [3:0] INACTIVE = 4'b00;

//case para asigna
//dada por el

always@( posedge clk) begin
	if(rst) begin
	out_wghtd_rndrobin <= INACTIVE;
	
	end else if(!rst && enb ) begin
						
	case (arbiter)					
		VCHANEL0: out_wghtd_rndrobin <= !empty_vchanel0 ? out_vchanel0 : INACTIVE;
		VCHANEL1: out_wghtd_rndrobin <= !empty_vchanel1 ? out_vchanel1 : INACTIVE; 
		VCHANEL2: out_wghtd_rndrobin <= !empty_vchanel2 ? out_vchanel2 : INACTIVE; 
		VCHANEL3: out_wghtd_rndrobin <= !empty_vchanel3 ? out_vchanel3 : INACTIVE; 
	endcase
	end


end
endmodule


