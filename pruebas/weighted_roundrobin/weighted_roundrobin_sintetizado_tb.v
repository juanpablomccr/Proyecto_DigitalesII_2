`timescale 1ns/1ps
`include "libs/cmos_cells.v"
`include "sintesis/weighted_roundrobin_sintetizado.v"
`ifndef esweightedroundrobin 
`include "modules/arbiter_interface/arbiter_interface.v"
`include "modules/arbiter/arbiter.v"
`include "modules/roundrobin/roundrobin.v"
`endif


/*******************TESTER*********************************/                         

module w_rndrobin_tester(
		clk0,
		rst,
		enb,
		init,
		tester_input,
		pop_vchannel0,
		pop_vchannel1,
		pop_vchannel2,
		pop_vchannel3,
		empty_vchannel0,
		empty_vchannel1,
		empty_vchannel2,
		empty_vchannel3,
		wghtd_output
);


output reg  clk0;
output reg  rst;
output reg  enb;
output reg  init;
output reg [3:0] pop_vchannel0;
output reg [3:0] pop_vchannel1;
output reg [3:0] pop_vchannel2;
output reg [3:0] pop_vchannel3;
output reg empty_vchannel0;
output reg empty_vchannel1;
output reg empty_vchannel2;
output reg empty_vchannel3;
output reg [127:0] tester_input;
input wire [3:0] wghtd_output;
//variables internas
reg arbiter_bus;
reg  [3:0] valid_channel_bus;
reg [1:0] rndrobin_input_bus;

parameter [3:0] EMPTY = 4'b00;
parameter [1:0]  VCHANEL0 = 2'b00;
parameter [1:0]  VCHANEL1 = 2'b01;
parameter [1:0]  VCHANEL2 = 2'b10;
parameter [1:0]  VCHANEL3 = 2'b11;
//Generacion de senales de reloj con un ciclo de 2 segundos
always	#1  clk0 = ~clk0;

//senales de canal vacio que controlan toda la salida del modulo
always #3 empty_vchannel0 <= ~empty_vchannel0;
always #9 empty_vchannel1 <= ~empty_vchannel1;
always #7 empty_vchannel2 <= ~empty_vchannel2;
always #5 empty_vchannel3 <= ~empty_vchannel3;
initial begin
	$dumpfile("gtkws/weigthed_roundrobin.vcd");
	$dumpvars;

	clk0 <= 0;
	rst <= 1;
	enb <= 0;
	init <= 0;
	pop_vchannel0 <= 4'ha;
	pop_vchannel1 <= 4'hb;
	pop_vchannel2 <= 4'hc;
	pop_vchannel3 <= 4'hd;
	valid_channel_bus[0] <= 1'b1;
	valid_channel_bus[1] <= 1'b1;
	valid_channel_bus[2] <= 1'b1;
	valid_channel_bus[3] <= 1'b1; 
	empty_vchannel0 <= 1'b1;
	empty_vchannel1 <= 1'b1;
	empty_vchannel2 <= 1'b1;
	empty_vchannel3 <= 1'b1;



//Nueva tabla de prioridades a sobreescribir	
	
	tester_input[1:0] <= VCHANEL2;	
	tester_input[3:2] <= VCHANEL0;	
	tester_input[5:4] <= VCHANEL1;	
	tester_input[7:6] <= VCHANEL2;	
	tester_input[9:8] <= VCHANEL1;	
	tester_input[11:10] <= VCHANEL2;	
	tester_input[13:12] <= VCHANEL3;	
	tester_input[15:14] <= VCHANEL2;	
	tester_input[17:16] <= VCHANEL0;	
	tester_input[19:18] <= VCHANEL1;	
	tester_input[21:20] <= VCHANEL2;	
	tester_input[23:22] <= VCHANEL3;	
	tester_input[25:24] <= VCHANEL1;	
	tester_input[27:26] <= VCHANEL2;	
	tester_input[29:28] <= VCHANEL3;	
	tester_input[31:30] <= VCHANEL1;	
	tester_input[33:32] <= VCHANEL3;	
	tester_input[35:34] <= VCHANEL2;	
	tester_input[37:36] <= VCHANEL3;	
	tester_input[39:38] <= VCHANEL0;	
	tester_input[41:40] <= VCHANEL3;	
	tester_input[43:42] <= VCHANEL1;	
	tester_input[45:44] <= VCHANEL0;	
	tester_input[47:46] <= VCHANEL2;	
	tester_input[49:48] <= VCHANEL0;	
	tester_input[51:50] <= VCHANEL1;	
	tester_input[53:52] <= VCHANEL2;	
	tester_input[55:54] <= VCHANEL1;	
	tester_input[57:56] <= VCHANEL0;	
	tester_input[59:58] <= VCHANEL2;	
	tester_input[61:60] <= VCHANEL0;	
	tester_input[63:62] <= VCHANEL2;	
	tester_input[65:64] <= VCHANEL3;	
	tester_input[67:66] <= VCHANEL1;	
	tester_input[69:68] <= VCHANEL2;	
	tester_input[71:70] <= VCHANEL1;	
	tester_input[73:72] <= VCHANEL3;	
	tester_input[75:74] <= VCHANEL2;	
	tester_input[77:76] <= VCHANEL0;	
	tester_input[79:78] <= VCHANEL2;	
	tester_input[81:80] <= VCHANEL3;	
	tester_input[83:82] <= VCHANEL1;	
	tester_input[85:84] <= VCHANEL2;	
	tester_input[87:86] <= VCHANEL1;	
	tester_input[89:88] <= VCHANEL0;	
	tester_input[91:90] <= VCHANEL2;	
	tester_input[93:92] <= VCHANEL3;	
	tester_input[95:94] <= VCHANEL0;	
	tester_input[97:96] <= VCHANEL2;	
	tester_input[99:98] <= VCHANEL0;	
	tester_input[101:100] <= VCHANEL3;	
	tester_input[103:102] <= VCHANEL0;	
	tester_input[105:104] <= VCHANEL1;	
	tester_input[107:106] <= VCHANEL2;	
	tester_input[109:108] <= VCHANEL3;	
	tester_input[111:110] <= VCHANEL1;	
	tester_input[113:112] <= VCHANEL3;	
	tester_input[115:114] <= VCHANEL2;	
	tester_input[117:116] <= VCHANEL0;	
	tester_input[119:118] <= VCHANEL2;	
	tester_input[121:120] <= VCHANEL1;	
	tester_input[123:122] <= VCHANEL3;	
	tester_input[125:124] <= VCHANEL2;
	tester_input[127:126] <= VCHANEL1;
	
	@(posedge clk0) begin
	rst <= 0;
	enb <= 1;
	end

	#130
	@(posedge clk0) 
		init <= 1;
	@(posedge clk0) 
		init <= 0;
	
	#120
	$finish;
end





endmodule

/*******************TESTBENCH*******************************///
module w_rndrobin_tb;
wire clk_bus;
wire rst;
wire enb;
wire init;
wire [3:0] pop_vchannel0;
wire [3:0] pop_vchannel1;
wire [3:0] pop_vchannel2;
wire [3:0] pop_vchannel3;
wire empty_vchannel0;
wire empty_vchannel1;
wire empty_vchannel2;
wire empty_vchannel3;
wire [127:0] tester_input;
wire [3:0] wghtd_output;

//conexiones internas
//
wire [3:0] valid_channel_bus;
wire [1:0] rndrobin_input_bus;
wire arbiter_input;

w_rndrobin_tester w_rndrobin_tester(
	.clk0(clk_bus),
	.rst(rst),
	.enb(enb),
	.init(init),
	.pop_vchannel0(pop_vchannel0),
	.pop_vchannel1(pop_vchannel1),
	.pop_vchannel2(pop_vchannel2),
	.pop_vchannel3(pop_vchannel3),
	.empty_vchannel0(empty_vchannel0),
	.empty_vchannel1(empty_vchannel1),
	.empty_vchannel2(empty_vchannel2),
	.empty_vchannel3(empty_vchannel3),
	.tester_input(tester_input),
	.wghtd_output(wghtd_output)
);
w_rndrobin w_rndrobin(
	.clk0(clk_bus),
	.rst(rst),
	.enb(enb),
	.init(init),
	.pop_vchannel0(pop_vchannel0),
	.pop_vchannel1(pop_vchannel1),
	.pop_vchannel2(pop_vchannel2),
	.pop_vchannel3(pop_vchannel3),
	.empty_vchannel0(empty_vchannel0),
	.empty_vchannel1(empty_vchannel1),
	.empty_vchannel2(empty_vchannel2),
	.empty_vchannel3(empty_vchannel3),
	.tester_input(tester_input),
	.wghtd_output(wghtd_output)
);
endmodule
