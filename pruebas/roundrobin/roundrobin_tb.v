`timescale 1ns/1ps
`include "modules/roundrobin/roundrobin.v"


module roundrobin_tb;
wire clk;
wire rst;
wire enb;
wire [3:0] pop_vchannel0; 
wire [3:0] pop_vchannel1;
wire [3:0] pop_vchannel2;
wire [3:0] pop_vchannel3;
wire [3:0] wghtd_output;
wire [1:0] arbiter;
wire [3:0] valid_channel;

roundrobin weighted_roundrobin(
.clk(clk),
.rst(rst),
.enb(enb),
.pop_vchannel0(pop_vchannel0), 
.pop_vchannel1(pop_vchannel1),
.pop_vchannel2(pop_vchannel2),
.pop_vchannel3(pop_vchannel3),
.wghtd_output(wghtd_output),
.valid_channel(valid_channel),
.arbiter(arbiter)
);


roundrobin_tester weighted_roundrobin_tester(
.clk(clk),
.rst(rst),
.enb(enb),
.pop_vchannel0(pop_vchannel0), 
.pop_vchannel1(pop_vchannel1),
.pop_vchannel2(pop_vchannel2),
.pop_vchannel3(pop_vchannel3),
.valid_channel(valid_channel),
.arbiter(arbiter)
);

endmodule



module roundrobin_tester(
		clk,			
		rst,
		enb,		
		pop_vchannel0, 
		pop_vchannel1,
		pop_vchannel2,
		pop_vchannel3,
		wghtd_output,
		valid_channel,
		arbiter	
);
 
output reg clk;
output reg rst;
output reg enb;
output reg [1:0] arbiter; 
output reg [3:0] pop_vchannel0;
output reg [3:0] pop_vchannel1;
output reg [3:0] pop_vchannel2;
output reg [3:0] pop_vchannel3;
output reg [3:0] valid_channel;
input wire [3:0] wghtd_output;
//variables internas auxiliares

//parametros

parameter [3:0] EMPTY = 4'b00;
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;


always	#1  clk = !clk;
always  #4 valid_channel[0] = !valid_channel[0];
always  #7 valid_channel[1] = !valid_channel[1];
always  #9 valid_channel[2] = !valid_channel[2];
always  #5 valid_channel[3] = !valid_channel[3];


initial begin
	$dumpfile("gtkws/roundrobin.vcd");
	$dumpvars;
	
	clk = 0; 
	rst = 1;
	enb = 0;
	arbiter <= VCHANEL0; 
	pop_vchannel0 <= 4'ha;
	pop_vchannel1 <= 4'hb;
	pop_vchannel2 <= 4'hc;
	pop_vchannel3 <= 4'hd;
	valid_channel <= 4'b1111;
	@(posedge clk) begin
	rst <= 0;
	enb <= 1;
	end

	#4
	@(posedge clk);
	arbiter <= VCHANEL2; 

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
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	repeat (3) begin
		@(posedge clk);
		arbiter <= VCHANEL1; 
	end
	@(posedge clk);
	arbiter <= VCHANEL3; 

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	
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

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter <= VCHANEL0; 
	end
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL1; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 
	
	@(posedge clk);
	arbiter <= VCHANEL2; 

	$finish;
end
endmodule
