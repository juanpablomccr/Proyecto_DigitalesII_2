module roundrobin_tb;
wire  clk,
wire rst,
wire enb,
wire [3:0] out_vchanel0, 
wire [3:0] out_vchanel1,
wire [3:0] out_vchanel2,
wire [3:0] out_vchanel3
wire [3:0] out_wgthd_rndrobin
wire [1:0] arbiter

rounrobin weighted_roundrobin(
.clk(clk,
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
.out_wgthd_rndrobin(out_wgthd_rndrobin),
.arbiter(arbiter)
);


rounrobin_tester weighted_roundrobin_tester(
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
.out_wgthd_rndrobin(out_wgthd_rndrobin),
.arbiter(arbiter)
);

endmodule



module roundrobin_tester(
		clk,			//reloj
		rst,			//reset	
		enb,			//enable
		out_vchanel0
		out_vchanel1
		out_vchanel2
		out_vchanel3
		out_wgthd_rndrobin
		arbiter,		// contador para manejar salida 
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
input output [3:0] out_wgthd_rndrobin;

//variables internas auxiliares

//parametros

parameter [3:0] INACTIVE = 4'b00;
parameter [1:0]  VCHANEL0 = 2'b00;
parameter [1:0]  VCHANEL0 = 2'b00;
parameter [1:0]  VCHANEL1 = 2'b01;
parameter [1:0]  VCHANEL2 = 2'b10;
parameter [1:0]  VCHANEL3 = 2'b11;


always #1  clk = ~clk;

initial begin
	$dumpifile(gtkws/roundrobin.vcd);
	$dumpvars;
//	$monitor($time,"clk\trst\tenb\tout_vchanel0\tout_vchanel1
//		\tout_vchanel2\tout_vchanel3\tout_wgthd_rndrobin, "
//		,clk,rst,enb,out_vchanel0,out_vchanel1,out_vchanel2,out_vchanel3,
//						out_wgthd_rndrobin,arbiter);
//	$display(clk,rst,enb,out_vchanel0,out_vchanel1,out_vchanel2,
//						out_vchanel3,out_wgthd_rndrobin,);
	

	
	clk <= 0; 
	rst <= 1;
	enb <= 0;
	arbiter <= VCHANEL0; 
	out_vchanel0 <= 4'b00;
	out_vchanel1 <= 4'b00;
	out_vchanel2 <= 4'b00;
	out_vchanel3 <= 4'b00;
	vchanel0 
	vchanel1 @(posedge clk) begin
	vchanel2 clk <= 1;
	vchanel3 rst <= 0;
	enb<= 1
	end

	#15
	
	@(posedge clk);
	arbiter <= VCHANEL0; 

	@(posedge clk);
	arbiter <= VCHANEL0; 

	@(posedge clk);
	arbiter <= VCHANEL0; 

	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 
	
	@(posedge clk);
	arbiter <= VCHANEL0; 

	$finish
end




