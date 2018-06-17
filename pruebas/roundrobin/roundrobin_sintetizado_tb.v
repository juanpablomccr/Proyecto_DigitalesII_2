`timescale 1ns/1ps
`include "sintesis/roundrobin_sintetizado.v"
`include "libs/cmos_cells.v"


module roundrobin_sintetizado_tb;
wire clk;
wire rst;
wire enb;
wire empty_vchanel0; 
wire empty_vchanel1; 
wire empty_vchanel2; 
wire empty_vchanel3; 
wire [3:0] out_vchanel0; 
wire [3:0] out_vchanel1;
wire [3:0] out_vchanel2;
wire [3:0] out_vchanel3;
wire [3:0] out_wghtd_rndrobin;
wire [1:0] arbiter;


roundrobin weighted_roundrobin_sintetizado(
.clk(clk),
.rst(rst),
.enb(enb),
.out_vchanel0(out_vchanel0), 
.out_vchanel1(out_vchanel1),
.out_vchanel2(out_vchanel2),
.out_vchanel3(out_vchanel3),
.empty_vchanel0(empty_vchanel0), 
.empty_vchanel1(empty_vchanel1),
.empty_vchanel2(empty_vchanel2),
.empty_vchanel3(empty_vchanel3),
.out_wghtd_rndrobin(out_wghtd_rndrobin),
.arbiter(arbiter)
);


roundrobin_tester weighted_roundrobin_sintetizado_tester(
.clk(clk),
.rst(rst),
.enb(enb),
.out_vchanel0(out_vchanel0), 
.out_vchanel1(out_vchanel1),
.out_vchanel2(out_vchanel2),
.out_vchanel3(out_vchanel3),
.empty_vchanel0(empty_vchanel0), 
.empty_vchanel1(empty_vchanel1),
.empty_vchanel2(empty_vchanel2),
.empty_vchanel3(empty_vchanel3),
.out_wghtd_rndrobin(out_wghtd_rndrobin),
.arbiter(arbiter)
);

endmodule



module roundrobin_tester(
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
 
output reg clk;
output reg rst;
output reg enb;
output reg [1:0] arbiter; 
output reg [3:0] out_vchanel0;
output reg [3:0] out_vchanel1;
output reg [3:0] out_vchanel2;
output reg [3:0] out_vchanel3;
output reg empty_vchanel0;
output reg empty_vchanel1;
output reg empty_vchanel2;
output reg empty_vchanel3;
input [3:0] out_wghtd_rndrobin;

//variables internas auxiliares

//parametros

parameter [3:0] INACTIVE = 4'b00;
parameter [1:0]  VCHANEL0 = 2'b00;
parameter [1:0]  VCHANEL1 = 2'b01;
parameter [1:0]  VCHANEL2 = 2'b10;
parameter [1:0]  VCHANEL3 = 2'b11;


always	#1  clk = !clk;
always  #4 empty_vchanel0 = !empty_vchanel0;
always  #7 empty_vchanel1 = !empty_vchanel1;
always  #2 empty_vchanel2 = !empty_vchanel2;
always  #5 empty_vchanel3 = !empty_vchanel3;


initial begin
	$dumpfile("gtkws/roundrobin_sintetizado.vcd");
	$dumpvars;
//	$monitor($time,"clk\trst\tenb\tout_vchanel0\tout_vchanel1
//		\tout_vchanel2\tout_vchanel3\tout_wghtd_rndrobin, "
//		,clk,rst,enb,out_vchanel0,out_vchanel1,out_vchanel2,out_vchanel3,
//						out_wghtd_rndrobin,arbiter);
//	$display(clk,rst,enb,out_vchanel0,out_vchanel1,out_vchanel2,
//						out_vchanel3,out_wghtd_rndrobin,);
	

	
	clk = 0; 
	rst = 1;
	enb = 0;
	arbiter <= VCHANEL0; 
	out_vchanel0 <= 4'ha;
	out_vchanel1 <= 4'hb;
	out_vchanel2 <= 4'hbc;
	out_vchanel3 <= 4'hd;
	empty_vchanel0 <= 1; 
	empty_vchanel1 <= 1; 
	empty_vchanel2 <= 1;
	empty_vchanel3 <= 1; 
	
	@(posedge clk) begin
	rst <= 0;
	enb <= 1;
	end

	#15
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL3; 

	@(posedge clk);
	arbiter <= VCHANEL1; 

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 

	$finish;
end
endmodule
