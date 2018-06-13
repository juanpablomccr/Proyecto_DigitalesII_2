module roundrobin_tb;
wire  clk,
wire rst,
wire enb,
wire [3:0] vchanel0, 
wire [3:0] vchanel1,
wire [3:0] vchanel2,
wire [3:0] vchanel3
wire [3:0] demux
wire [1:0] arbiter

rounrobin weighted_roundrobin(
.clk(clk,
.rst(rst),
.enb(enb),
.vchanel0(vchanel0), 
.vchanel1(vchanel1),
.vchanel2(vchanel2),
.vchanel3(vchanel3),
.demux(demux),
.arbiter(arbiter)
);


rounrobin_tester weighted_roundrobin_tester(
.clk(clk),
.rst(rst),
.enb(enb),
.vchanel0(vchanel0), 
.vchanel1(vchanel1),
.vchanel2(vchanel2),
.vchanel3(vchanel3),
.demux(demux),
.arbiter(arbiter)
);

endmodule



module roundrobin_tester(
		clk,			//reloj
		rst,			//reset	
		enb,			//enable
		vchanel0
		vchanel1
		vchanel2
		vchanel3
		demux
		arbiter,		// contador para manejar salida 
);
 
output reg clk;
output reg rst;
output reg enb;
output reg [1:0] arbiter; 
output reg [3:0] vchanel0;
output reg [3:0] vchanel1;
output reg [3:0] vchanel2;
output reg [3:0] vchanel3;
input output [3:0] demux;

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
	$monitor($time,"clk\trst\tenb\tvchanel0\tvchanel1\tvchanel2\tvchanel3
	       \tdemux, ",clk,rst,enb,vchanel0,vchanel1r,
		       			vchanel2,vchanel3,demux,arbiter);
	$display(clk,rst,enb,vchanel0,vchanel1,vchanel2,
							vchanel3,demux,");
	

	
	clk <= 0; 
	rst <= 1;
	enb <= 0;
	arbiter <= VCHANEL0; 
	vchanel0 <= 4'b00;
	vchanel1 <= 4'b00;
	vchanel2 <= 4'b00;
	vchanel3 <= 4'b00;

	@(posedge clk) begin
	clk <= 1;
	rst <= 0;
	enb<= 1
	end








end




