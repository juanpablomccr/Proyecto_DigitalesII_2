module arbiter_interface(
			clk,
			rst,
			enb,
			init,
			tester_input,
			arbiter_input
);

input wire clk;
input wire rst;
input wire enb;
input wire init;
input wire [127:0] tester_input;
output reg [1:0] arbiter_input;

//parameters
parameter [1:0] ON = 1'b1;                                                        
parameter [1:0] OFF = 1'b0; 
parameter [1:0] VCHANEL0 = 2'b00;
parameter [1:0] VCHANEL1 = 2'b01;
parameter [1:0] VCHANEL2 = 2'b10;
parameter [1:0] VCHANEL3 = 2'b11;

//Tabla de prioridades 
//memoria rw interna donde se guarda la tabla de arbitraje de los canales
//virtuales.
//variable auxiliar

reg  [127:0] vc_priority_table; 
//reg  [1:0] modified_vc_priority_table[63:0]; 
reg  [6:0] addr;


	


initial begin
	addr = 7'd0; 
	arbiter_input = VCHANEL0;
	
	vc_priority_table[1:0] = VCHANEL3;	
	vc_priority_table[3:2] = VCHANEL2;	
	vc_priority_table[5:4] = VCHANEL3;	
	vc_priority_table[7:6] = VCHANEL0;	
	vc_priority_table[9:8] = VCHANEL2;	
	vc_priority_table[11:10] = VCHANEL1;	
	vc_priority_table[13:12] = VCHANEL0;	
	vc_priority_table[15:14] = VCHANEL1;	
	vc_priority_table[17:16] = VCHANEL3;	
	vc_priority_table[19:18] = VCHANEL2;	
	vc_priority_table[21:20] = VCHANEL3;	
	vc_priority_table[23:22] = VCHANEL0;	
	vc_priority_table[25:24] = VCHANEL2;	
	vc_priority_table[27:26] = VCHANEL1;	
	vc_priority_table[29:28] = VCHANEL0;	
	vc_priority_table[31:30] = VCHANEL3;	
	vc_priority_table[33:32] = VCHANEL2;	
	vc_priority_table[35:34] = VCHANEL3;	
	vc_priority_table[37:36] = VCHANEL0;	
	vc_priority_table[39:38] = VCHANEL2;	
	vc_priority_table[41:40] = VCHANEL1;	
	vc_priority_table[43:42] = VCHANEL0;	
	vc_priority_table[45:44] = VCHANEL1;	
	vc_priority_table[47:46] = VCHANEL3;	
	vc_priority_table[49:48] = VCHANEL2;	
	vc_priority_table[51:50] = VCHANEL3;	
	vc_priority_table[53:52] = VCHANEL0;	
	vc_priority_table[55:54] = VCHANEL2;	
	vc_priority_table[57:56] = VCHANEL1;	
	vc_priority_table[59:58] = VCHANEL0;	
	vc_priority_table[61:60] = VCHANEL1;	
	vc_priority_table[63:62] = VCHANEL3;	
	vc_priority_table[65:64] = VCHANEL2;	
	vc_priority_table[67:66] = VCHANEL3;	
	vc_priority_table[69:68] = VCHANEL0;	
	vc_priority_table[71:70] = VCHANEL2;	
	vc_priority_table[73:72] = VCHANEL1;	
	vc_priority_table[75:74] = VCHANEL0;	
	vc_priority_table[77:76] = VCHANEL1;	
	vc_priority_table[79:78] = VCHANEL3;	
	vc_priority_table[81:80] = VCHANEL2;	
	vc_priority_table[83:82] = VCHANEL3;	
	vc_priority_table[85:84] = VCHANEL0;	
	vc_priority_table[87:86] = VCHANEL2;	
	vc_priority_table[89:88] = VCHANEL1;	
	vc_priority_table[91:90] = VCHANEL0;	
	vc_priority_table[93:92] = VCHANEL1;	
	vc_priority_table[95:94] = VCHANEL3;	
	vc_priority_table[97:96] = VCHANEL2;	
	vc_priority_table[99:98] = VCHANEL3;	
	vc_priority_table[101:100] = VCHANEL0;	
	vc_priority_table[103:102] = VCHANEL2;	
	vc_priority_table[105:104] = VCHANEL1;	
	vc_priority_table[107:106] = VCHANEL0;	
	vc_priority_table[109:108] = VCHANEL1;	
	vc_priority_table[111:110] = VCHANEL3;	
	vc_priority_table[113:112] = VCHANEL2;	
	vc_priority_table[115:114] = VCHANEL3;	
	vc_priority_table[117:116] = VCHANEL0;	
	vc_priority_table[119:118] = VCHANEL2;	
	vc_priority_table[121:120] = VCHANEL1;	
	vc_priority_table[123:122] = VCHANEL0;	
	vc_priority_table[125:124] = VCHANEL3;
	vc_priority_table[127:126] = VCHANEL2;
end

always@(posedge clk)  begin
	if(rst)
	arbiter_input <= VCHANEL0;
	else if(!rst&enb) begin
		case(init)	
		OFF: begin
			case(addr)
			7'd0: begin
			arbiter_input <= vc_priority_table[1:0];	
			addr <= addr + 7'd1;
			end	
			7'd1: begin
			arbiter_input <= vc_priority_table[3:2];	
			addr <= addr + 7'd1;
			end	
			7'd2: begin
			arbiter_input <= vc_priority_table[5:4];	
			addr <= addr + 7'd1;
			end	
			7'd3: begin
			arbiter_input <= vc_priority_table[7:6];	
			addr <= addr + 7'd1;
			end	
			7'd4: begin
			arbiter_input <= vc_priority_table[9:8];	
			addr <= addr + 7'd1;
			end	
			7'd5: begin
			arbiter_input <= vc_priority_table[11:10];	
			addr <= addr + 7'd1;
			end	
			7'd6: begin
			arbiter_input <= vc_priority_table[13:12];	
			addr <= addr + 7'd1;
			end	
			7'd7: begin
			arbiter_input <= vc_priority_table[15:14];	
			addr <= addr + 7'd1;
			end	
			7'd8: begin
			arbiter_input <= vc_priority_table[17:16];	
			addr <= addr + 7'd1;
			end	
			7'd9: begin
			arbiter_input <= vc_priority_table[19:18];	
			addr <= addr + 7'd1;
			end	
			7'd10: begin
			arbiter_input <= vc_priority_table[21:20];	
			addr <= addr + 7'd1;
			end	
			7'd11: begin
			arbiter_input <= vc_priority_table[23:22];	
			addr <= addr + 7'd1;
			end	
			7'd12: begin
			arbiter_input <= vc_priority_table[25:24];	
			addr <= addr + 7'd1;
			end	
			7'd13: begin
			arbiter_input <= vc_priority_table[27:26];	
			addr <= addr + 7'd1;
			end	
			7'd14: begin
			arbiter_input <= vc_priority_table[29:28];	
			addr <= addr + 7'd1;
			end	
			7'd15: begin
			arbiter_input <= vc_priority_table[31:30];	
			addr <= addr + 7'd1;
			end	
			7'd16: begin
			arbiter_input <= vc_priority_table[33:32];	
			addr <= addr + 7'd1;
			end	
			7'd17: begin
			arbiter_input <= vc_priority_table[35:34];	
			addr <= addr + 7'd1;
			end	
			7'd18: begin
			arbiter_input <= vc_priority_table[37:36];	
			addr <= addr + 7'd1;
			end	
			7'd19: begin
			arbiter_input <= vc_priority_table[39:38];	
			addr <= addr + 7'd1;
			end	
			7'd20: begin
			arbiter_input <= vc_priority_table[41:40];	
			addr <= addr + 7'd1;
			end	
			7'd21: begin
			arbiter_input <= vc_priority_table[43:42];	
			addr <= addr + 7'd1;
			end	
			7'd22: begin
			arbiter_input <= vc_priority_table[45:44];	
			addr <= addr + 7'd1;
			end	
			7'd23: begin
			arbiter_input <= vc_priority_table[47:46];	
			addr <= addr + 7'd1;
			end	
			7'd24: begin
			arbiter_input <= vc_priority_table[49:48];	
			addr <= addr + 7'd1;
			end	
			7'd25: begin
			arbiter_input <= vc_priority_table[51:50];	
			addr <= addr + 7'd1;
			end	
			7'd26: begin
			arbiter_input <= vc_priority_table[53:52];	
			addr <= addr + 7'd1;
			end	
			7'd27: begin
			arbiter_input <= vc_priority_table[55:54];	
			addr <= addr + 7'd1;
			end	
			7'd28: begin
			arbiter_input <= vc_priority_table[57:56];	
			addr <= addr + 7'd1;
			end	
			7'd29: begin
			arbiter_input <= vc_priority_table[59:58];	
			addr <= addr + 7'd1;
			end	
			7'd30: begin
			arbiter_input <= vc_priority_table[61:60];	
			addr <= addr + 7'd1;
			end	
			7'd31: begin
			arbiter_input <= vc_priority_table[63:62];	
			addr <= addr + 7'd1;
			end	
			7'd32: begin
			arbiter_input <= vc_priority_table[65:64];	
			addr <= addr + 7'd1;
			end	
			7'd33: begin
			arbiter_input <= vc_priority_table[67:66];	
			addr <= addr + 7'd1;
			end	
			7'd34: begin
			arbiter_input <= vc_priority_table[69:68];	
			addr <= addr + 7'd1;
			end	
			7'd35: begin
			arbiter_input <= vc_priority_table[71:70];	
			addr <= addr + 7'd1;
			end	
			7'd36: begin
			arbiter_input <= vc_priority_table[73:72];	
			addr <= addr + 7'd1;
			end	
			7'd37: begin
			arbiter_input <= vc_priority_table[75:74];	
			addr <= addr + 7'd1;
			end	
			7'd38: begin
			arbiter_input <= vc_priority_table[77:76];	
			addr <= addr + 7'd1;
			end	
			7'd39: begin
			arbiter_input <= vc_priority_table[79:78];	
			addr <= addr + 7'd1;
			end	
			7'd40: begin
			arbiter_input <= vc_priority_table[81:80];	
			addr <= addr + 7'd1;
			end
			7'd41: begin
			arbiter_input <= vc_priority_table[83:82];	
			addr <= addr + 7'd1;
			end	
			7'd42: begin
			arbiter_input <= vc_priority_table[85:84];	
			addr <= addr + 7'd1;
			end	
			7'd43: begin
			arbiter_input <= vc_priority_table[87:86];	
			addr <= addr + 7'd1;
			end	
			7'd44: begin
			arbiter_input <= vc_priority_table[89:88];	
			addr <= addr + 7'd1;
			end	
			7'd45: begin
			arbiter_input <= vc_priority_table[91:90];	
			addr <= addr + 7'd1;
			end	
			7'd46: begin
			arbiter_input <= vc_priority_table[93:92];	
			addr <= addr + 7'd1;
			end	
			7'd47: begin
			arbiter_input <= vc_priority_table[95:94];	
			addr <= addr + 7'd1;
			end	
			7'd48: begin
			arbiter_input <= vc_priority_table[97:96];	
			addr <= addr + 7'd1;
			end	
			7'd49: begin
			arbiter_input <= vc_priority_table[99:98];	
			addr <= addr + 7'd1;
			end	
			7'd50: begin
			arbiter_input <= vc_priority_table[101:100];	
			addr <= addr + 7'd1;
			end	
			7'd51: begin
			arbiter_input <= vc_priority_table[103:102];	
			addr <= addr + 7'd1;
			end	
			7'd52: begin
			arbiter_input <= vc_priority_table[105:104];	
			addr <= addr + 7'd1;
			end	
			7'd53: begin
			arbiter_input <= vc_priority_table[107:106];	
			addr <= addr + 7'd1;
			end	
			7'd54: begin
			arbiter_input <= vc_priority_table[109:108];	
			addr <= addr + 7'd1;
			end	
			7'd55: begin
			arbiter_input <= vc_priority_table[111:110];	
			addr <= addr + 7'd1;
			end	
			7'd56: begin
			arbiter_input <= vc_priority_table[113:112];	
			addr <= addr + 7'd1;
			end	
			7'd57: begin
			arbiter_input <= vc_priority_table[115:114];	
			addr <= addr + 7'd1;
			end	
			7'd58: begin
			arbiter_input <= vc_priority_table[117:116];	
			addr <= addr + 7'd1;
			end	
			7'd59: begin
			arbiter_input <= vc_priority_table[119:118];	
			addr <= addr + 7'd1;
			end	
			7'd60: begin
			arbiter_input <= vc_priority_table[121:120];	
			addr <= addr + 7'd1;
			end	
			7'd61: begin
			arbiter_input <= vc_priority_table[123:122];	
			addr <= addr + 7'd1;
			end	
			7'd62: begin
			arbiter_input <= vc_priority_table[125:124];
			addr <= addr + 7'd1;
			end	
			7'd63: begin
			arbiter_input <= vc_priority_table[127:126];
			addr <=  7'd0;
			end
			endcase	
		end
		ON: begin
			vc_priority_table[1:0] <= tester_input[1:0];  
			vc_priority_table[3:2] <= tester_input[3:2];  
			vc_priority_table[5:4] <= tester_input[5:4];  
			vc_priority_table[7:6] <= tester_input[7:6]; 
			vc_priority_table[9:8] <= tester_input[9:8]; 
			vc_priority_table[11:10] <= tester_input[11:10]; 
			vc_priority_table[13:12] <= tester_input[13:12]; 
			vc_priority_table[15:14] <= tester_input[15:14]; 
			vc_priority_table[17:16] <= tester_input[17:16]; 
			vc_priority_table[19:18] <= tester_input[19:18]; 
			vc_priority_table[21:20] <= tester_input[21:20];
			vc_priority_table[23:22] <= tester_input[23:22];
			vc_priority_table[25:24] <= tester_input[25:24];
			vc_priority_table[27:26] <= tester_input[27:26];
			vc_priority_table[29:28] <= tester_input[29:28];
			vc_priority_table[31:30] <= tester_input[31:30];
			vc_priority_table[33:32] <= tester_input[33:32];
			vc_priority_table[35:34] <= tester_input[35:34];
			vc_priority_table[37:36] <= tester_input[37:36];
			vc_priority_table[39:38] <= tester_input[39:38];
			vc_priority_table[41:40] <= tester_input[41:40];
			vc_priority_table[43:42] <= tester_input[43:42];
			vc_priority_table[45:44] <= tester_input[45:44];
			vc_priority_table[47:46] <= tester_input[47:46];
			vc_priority_table[49:48] <= tester_input[49:48];
			vc_priority_table[51:50] <= tester_input[51:50];
			vc_priority_table[53:52] <= tester_input[53:52];
			vc_priority_table[55:54] <= tester_input[55:54];
			vc_priority_table[57:56] <= tester_input[57:56];
			vc_priority_table[59:58] <= tester_input[59:58];
			vc_priority_table[61:60] <= tester_input[61:60];
			vc_priority_table[63:62] <= tester_input[63:62];
			vc_priority_table[65:64] <= tester_input[65:64];
			vc_priority_table[67:66] <= tester_input[67:66];
			vc_priority_table[69:68] <= tester_input[69:68];
			vc_priority_table[71:70] <= tester_input[71:70];
			vc_priority_table[73:72] <= tester_input[73:72];
			vc_priority_table[75:74] <= tester_input[75:74];
			vc_priority_table[77:76] <= tester_input[77:76];
			vc_priority_table[79:78] <= tester_input[79:78];
			vc_priority_table[81:80] <= tester_input[81:80];
			vc_priority_table[83:82] <= tester_input[83:82];
			vc_priority_table[85:84] <= tester_input[85:84];
			vc_priority_table[87:86] <= tester_input[87:86];
			vc_priority_table[89:88] <= tester_input[89:88];
			vc_priority_table[91:90] <= tester_input[91:90];
			vc_priority_table[93:92] <= tester_input[93:92];
			vc_priority_table[95:94] <= tester_input[95:94];
			vc_priority_table[97:96] <= tester_input[97:96];
			vc_priority_table[99:98] <= tester_input[99:98];
			vc_priority_table[101:100] <= tester_input[101:100];
			vc_priority_table[103:102] <= tester_input[103:102];
			vc_priority_table[105:104] <= tester_input[105:104];
			vc_priority_table[107:106] <= tester_input[107:106];
			vc_priority_table[109:108] <= tester_input[109:108];
			vc_priority_table[111:110] <= tester_input[111:110];
			vc_priority_table[113:112] <= tester_input[113:112];
			vc_priority_table[115:114] <= tester_input[115:114];
			vc_priority_table[117:116] <= tester_input[117:116];
			vc_priority_table[119:118] <= tester_input[119:118];
			vc_priority_table[121:120] <= tester_input[121:120];
			vc_priority_table[123:122] <= tester_input[123:122];
			vc_priority_table[125:124] <= tester_input[125:124];
			vc_priority_table[127:126] <= tester_input[127:126];
			addr <= 7'd0;                              
		end
		endcase
	end
end
endmodule
