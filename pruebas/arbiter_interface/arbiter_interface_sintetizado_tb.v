`timescale 1ns/1ps
`include "libs/cmos_cells.v"
`include "sintesis/arbiter_interface_sintetizado.v"

module arbiter_interface_tester(
			clk,
			rst,
			enb,
			init,
			tester_input,
			arbiter_input
);

output reg clk;
output reg rst;
output reg enb;
output reg init;
output reg [127:0] tester_input;
input wire [1:0] arbiter_input;

parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;
initial begin
	$dumpfile("gtkws/arbiter_interface_sintetizado.vcd");
	$dumpvars;

	clk <= 0;
	enb <= 0;
	rst <= 1;
	init <= 0;
	
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
        	
	@(posedge clk) begin
		enb <= 1;
		rst <= 0;
	end
	#135
	@(posedge clk) 
		init <= 1;

	@(posedge clk)
	#2 
		init <= 0;
	#131
	$finish;
end

always #1 clk <= ~clk;

endmodule


module arbiter_interface_tb;
 
wire clk_bus;
wire rst;
wire enb;
wire init;
wire [127:0] tester_input;
wire [1:0] arbiter_input_bus;

arbiter_interface arbiter_interface(
		.clk(clk_bus),
                .rst(rst),
                .enb(enb),
                .init(init),
		.tester_input(tester_input),
		.arbiter_input(arbiter_input_bus)
);
arbiter_interface_tester arbiter_interface_tester(
		.clk(clk_bus),
                .rst(rst),
                .enb(enb),
                .init(init),
		.tester_input(tester_input),
		.arbiter_input(arbiter_input_bus)
);



endmodule



