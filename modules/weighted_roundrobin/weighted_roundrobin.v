`define esweightedroundrobin 1
`include "modules/arbiter_interface/arbiter_interface.v"
`include "modules/arbiter/arbiter.v"
`include "modules/roundrobin/roundrobin.v"

module w_rndrobin(
		clk0,
		rst,
		enb,
		init,
		pop_vchannel0,
		pop_vchannel1,
		pop_vchannel2,
		pop_vchannel3,
		empty_vchannel0,
		empty_vchannel1,
		empty_vchannel2,
		empty_vchannel3,
		tester_input,
		wghtd_output
);


input wire clk0;
input wire rst;
input wire enb;
input wire init;
input wire [3:0] pop_vchannel0;
input wire [3:0] pop_vchannel1;
input wire [3:0] pop_vchannel2;
input wire [3:0] pop_vchannel3;
input wire empty_vchannel0;
input wire empty_vchannel1;
input wire empty_vchannel2;
input wire empty_vchannel3;
input wire [127:0] tester_input;
output wire [3:0] wghtd_output;


//variables auxiliares
//arbiter_interface-arbiter bus
wire [1:0] arbiter_bus;

//valid_channel bus from arbiter to roundrobin 
wire  [3:0] valid_channel_bus;
//arbiter-roundrobin bus
wire  [1:0] rndrobin_input_bus;

arbiter_interface arbiter_interface(
			.clk(clk0),
			.rst(rst),
                        .enb(enb),
			.init(init),
			.tester_input(tester_input),
			.arbiter_input(arbiter_bus)
);
arbiter arbiter(
		.clk(clk0),
		.rst(rst),
		.enb(enb),
		.empty_vchannel0(empty_vchannel0),
		.empty_vchannel1(empty_vchannel1),
		.empty_vchannel2(empty_vchannel2),
		.empty_vchannel3(empty_vchannel3),
		.arbiter_input(arbiter_bus),
		.valid_channel(valid_channel_bus),
		.rndrobin_input(rndrobin_input_bus)	
);
roundrobin roundrobin(
		.clk(clk0),
		.rst(rst),
		.enb(enb),
		.pop_vchannel0(pop_vchannel0), 
		.pop_vchannel1(pop_vchannel1),
		.pop_vchannel2(pop_vchannel2),
		.pop_vchannel3(pop_vchannel3),
		.valid_channel(valid_channel_bus),
		.arbiter(rndrobin_input_bus),
		.wghtd_output(wghtd_output)
);
endmodule
