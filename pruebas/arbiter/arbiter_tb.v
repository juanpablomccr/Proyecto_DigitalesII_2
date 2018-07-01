`timescale 1ns/1ps
`include "modules/arbiter/arbiter.v"

module arbiter_tester(
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

output reg clk;
output reg rst;
output reg enb;
output reg empty_vchannel0;
output reg empty_vchannel1;
output reg empty_vchannel2;
output reg empty_vchannel3;
output reg [1:0] arbiter_input;
input wire [3:0] valid_channel;
input wire [1:0] rndrobin_input;


//parametros
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;

initial begin 
	$dumpfile("gtkws/arbiter.vcd");
	$dumpvars;
	
	clk = 0; 
	rst = 1;
	enb = 0;
	empty_vchannel0 = 1'b0;
	empty_vchannel1 = 1'b0;
	empty_vchannel2 = 1'b0;
	empty_vchannel3 = 1'b0;

	@(posedge clk) begin
	rst <= 0;
	enb <= 1;
	end

	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL3; 

	@(posedge clk);
	arbiter_input <= VCHANEL1; 

	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	repeat (5) begin
		@(posedge clk);
		arbiter_input <= VCHANEL3; 
	end
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL0; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL1; 
	
	@(posedge clk);
	arbiter_input <= VCHANEL2; 

	$finish;
end

always	#1  clk = !clk;
always  #4 empty_vchannel0 = !empty_vchannel0;
always  #7 empty_vchannel1 = !empty_vchannel1;
always  #5 empty_vchannel2 = !empty_vchannel2;
always  #9 empty_vchannel3 = !empty_vchannel3;


endmodule

module arbiter_tb;
wire clk;
wire rst;
wire enb;
wire empty_vchannel0;
wire empty_vchannel1;
wire empty_vchannel2;
wire empty_vchannel3;	
wire [1:0] arbiter_input;
wire [3:0] valid_channel;
wire [1:0] rndrobin_input;


arbiter arbiter(
		.clk(clk),
		.rst(rst),
		.enb(enb),
		.empty_vchannel0(empty_vchannel0),
		.empty_vchannel1(empty_vchannel1),
		.empty_vchannel2(empty_vchannel2),
		.empty_vchannel3(empty_vchannel3),
		.arbiter_input(arbiter_input),
		.valid_channel(valid_channel),
		.rndrobin_input(rndrobin_input)	


);


arbiter_tester arbiter_tester(
		.clk(clk),
		.rst(rst),
		.enb(enb),
		.empty_vchannel0(empty_vchannel0),
		.empty_vchannel1(empty_vchannel1),
		.empty_vchannel2(empty_vchannel2),
		.empty_vchannel3(empty_vchannel3),
		.arbiter_input(arbiter_input),
		.valid_channel(valid_channel),
		.rndrobin_input(rndrobin_input)	


);


endmodule
