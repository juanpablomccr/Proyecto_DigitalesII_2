/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "modules/roundrobin/roundrobin.v:2" *)
module roundrobin(clk, rst, enb, valid_channel, pop_vchannel0, pop_vchannel1, pop_vchannel2, pop_vchannel3, arbiter, wghtd_output);
  (* src = "modules/roundrobin/roundrobin.v:45" *)
  wire [3:0] _000_;
  wire [1:0] _001_;
  wire [1:0] _002_;
  wire [1:0] _003_;
  wire [1:0] _004_;
  wire [1:0] _005_;
  wire [1:0] _006_;
  wire _007_;
  wire _008_;
  wire [1:0] _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  (* src = "modules/roundrobin/roundrobin.v:49" *)
  wire _013_;
  (* src = "modules/roundrobin/roundrobin.v:49" *)
  wire _014_;
  wire [3:0] _015_;
  wire [3:0] _016_;
  wire [3:0] _017_;
  wire [3:0] _018_;
  wire [3:0] _019_;
  (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:432" *)
  wire [15:0] _020_;
  (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:428" *)
  wire [3:0] _021_;
  wire [3:0] _022_;
  wire _023_;
  wire [3:0] _024_;
  wire [3:0] _025_;
  wire [3:0] _026_;
  wire _027_;
  wire [3:0] _028_;
  wire [3:0] _029_;
  wire [3:0] _030_;
  wire _031_;
  wire [3:0] _032_;
  wire [3:0] _033_;
  wire _034_;
  wire [3:0] _035_;
  (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *)
  wire _036_;
  (* src = "modules/roundrobin/roundrobin.v:18" *)
  input [1:0] arbiter;
  (* src = "modules/roundrobin/roundrobin.v:15" *)
  input clk;
  (* src = "modules/roundrobin/roundrobin.v:17" *)
  input enb;
  (* src = "modules/roundrobin/roundrobin.v:19" *)
  input [3:0] pop_vchannel0;
  (* src = "modules/roundrobin/roundrobin.v:20" *)
  input [3:0] pop_vchannel1;
  (* src = "modules/roundrobin/roundrobin.v:21" *)
  input [3:0] pop_vchannel2;
  (* src = "modules/roundrobin/roundrobin.v:22" *)
  input [3:0] pop_vchannel3;
  (* src = "modules/roundrobin/roundrobin.v:16" *)
  input rst;
  (* src = "modules/roundrobin/roundrobin.v:23" *)
  input [3:0] valid_channel;
  (* init = 4'b0000 *)
  (* src = "modules/roundrobin/roundrobin.v:24" *)
  output [3:0] wghtd_output;
  reg [3:0] wghtd_output;
  initial wghtd_output = 4'b0000;
  assign _010_ = _009_[0] |(* src = "modules/roundrobin/roundrobin.v:51" *)  _009_[1];
  assign _011_ = arbiter[0] |(* src = "modules/roundrobin/roundrobin.v:51" *)  _009_[1];
  assign _012_ = _009_[0] |(* src = "modules/roundrobin/roundrobin.v:51" *)  arbiter[1];
  assign _001_[0] = _020_[2] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[6];
  assign _001_[1] = _020_[10] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[14];
  assign _021_[2] = _001_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _001_[1];
  assign _002_[0] = _020_[3] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[7];
  assign _002_[1] = _020_[11] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[15];
  assign _021_[3] = _002_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _002_[1];
  assign _003_[0] = _020_[1] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[5];
  assign _003_[1] = _020_[9] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[13];
  assign _021_[1] = _003_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _003_[1];
  assign _004_[0] = _020_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[4];
  assign _004_[1] = _020_[8] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _020_[12];
  assign _021_[0] = _004_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:441" *)  _004_[1];
  assign _005_[0] = _023_ |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *)  _027_;
  assign _005_[1] = _031_ |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *)  _034_;
  assign _036_ = _005_[0] |(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *)  _005_[1];
  assign _006_[0] = valid_channel[0] |(* src = "modules/roundrobin/roundrobin.v:100" *)  valid_channel[1];
  assign _006_[1] = valid_channel[2] |(* src = "modules/roundrobin/roundrobin.v:100" *)  valid_channel[3];
  assign _007_ = _006_[0] |(* src = "modules/roundrobin/roundrobin.v:100" *)  _006_[1];
  assign _008_ = arbiter[0] |(* src = "modules/roundrobin/roundrobin.v:51" *)  arbiter[1];
  assign _014_ = ~(* src = "modules/roundrobin/roundrobin.v:49" *) rst;
  assign _023_ = ~(* src = "modules/roundrobin/roundrobin.v:51" *) _010_;
  assign _027_ = ~(* src = "modules/roundrobin/roundrobin.v:51" *) _011_;
  assign _031_ = ~(* src = "modules/roundrobin/roundrobin.v:51" *) _012_;
  assign _034_ = ~(* src = "modules/roundrobin/roundrobin.v:51" *) _008_;
  assign _013_ = _014_ &(* src = "modules/roundrobin/roundrobin.v:49" *)  enb;
  assign _016_[0] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:98" *) pop_vchannel2[0] : _015_[0];
  assign _016_[1] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:98" *) pop_vchannel2[1] : _015_[1];
  assign _016_[2] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:98" *) pop_vchannel2[2] : _015_[2];
  assign _016_[3] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:98" *) pop_vchannel2[3] : _015_[3];
  assign _017_[0] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:96" *) pop_vchannel1[0] : _016_[0];
  assign _017_[1] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:96" *) pop_vchannel1[1] : _016_[1];
  assign _017_[2] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:96" *) pop_vchannel1[2] : _016_[2];
  assign _017_[3] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:96" *) pop_vchannel1[3] : _016_[3];
  assign _018_[0] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:94" *) pop_vchannel0[0] : _017_[0];
  assign _018_[1] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:94" *) pop_vchannel0[1] : _017_[1];
  assign _018_[2] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:94" *) pop_vchannel0[2] : _017_[2];
  assign _018_[3] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:94" *) pop_vchannel0[3] : _017_[3];
  assign _019_[0] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:92" *) pop_vchannel3[0] : _018_[0];
  assign _019_[1] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:92" *) pop_vchannel3[1] : _018_[1];
  assign _019_[2] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:92" *) pop_vchannel3[2] : _018_[2];
  assign _019_[3] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:92" *) pop_vchannel3[3] : _018_[3];
  assign _015_[0] = _007_ ? (* src = "modules/roundrobin/roundrobin.v:87" *) wghtd_output[0] : 1'b0;
  assign _015_[1] = _007_ ? (* src = "modules/roundrobin/roundrobin.v:87" *) wghtd_output[1] : 1'b0;
  assign _015_[2] = _007_ ? (* src = "modules/roundrobin/roundrobin.v:87" *) wghtd_output[2] : 1'b0;
  assign _015_[3] = _007_ ? (* src = "modules/roundrobin/roundrobin.v:87" *) wghtd_output[3] : 1'b0;
  assign _025_[0] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:81" *) pop_vchannel1[0] : _024_[0];
  assign _025_[1] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:81" *) pop_vchannel1[1] : _024_[1];
  assign _025_[2] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:81" *) pop_vchannel1[2] : _024_[2];
  assign _025_[3] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:81" *) pop_vchannel1[3] : _024_[3];
  assign _026_[0] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:79" *) pop_vchannel2[0] : _025_[0];
  assign _026_[1] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:79" *) pop_vchannel2[1] : _025_[1];
  assign _026_[2] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:79" *) pop_vchannel2[2] : _025_[2];
  assign _026_[3] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:79" *) pop_vchannel2[3] : _025_[3];
  assign _024_[0] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:72" *) pop_vchannel3[0] : _015_[0];
  assign _024_[1] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:72" *) pop_vchannel3[1] : _015_[1];
  assign _024_[2] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:72" *) pop_vchannel3[2] : _015_[2];
  assign _024_[3] = valid_channel[3] ? (* src = "modules/roundrobin/roundrobin.v:72" *) pop_vchannel3[3] : _015_[3];
  assign _028_[0] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:70" *) pop_vchannel2[0] : _024_[0];
  assign _028_[1] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:70" *) pop_vchannel2[1] : _024_[1];
  assign _028_[2] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:70" *) pop_vchannel2[2] : _024_[2];
  assign _028_[3] = valid_channel[2] ? (* src = "modules/roundrobin/roundrobin.v:70" *) pop_vchannel2[3] : _024_[3];
  assign _029_[0] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:68" *) pop_vchannel0[0] : _028_[0];
  assign _029_[1] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:68" *) pop_vchannel0[1] : _028_[1];
  assign _029_[2] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:68" *) pop_vchannel0[2] : _028_[2];
  assign _029_[3] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:68" *) pop_vchannel0[3] : _028_[3];
  assign _030_[0] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:66" *) pop_vchannel1[0] : _029_[0];
  assign _030_[1] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:66" *) pop_vchannel1[1] : _029_[1];
  assign _030_[2] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:66" *) pop_vchannel1[2] : _029_[2];
  assign _030_[3] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:66" *) pop_vchannel1[3] : _029_[3];
  assign _032_[0] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:55" *) pop_vchannel1[0] : _028_[0];
  assign _032_[1] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:55" *) pop_vchannel1[1] : _028_[1];
  assign _032_[2] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:55" *) pop_vchannel1[2] : _028_[2];
  assign _032_[3] = valid_channel[1] ? (* src = "modules/roundrobin/roundrobin.v:55" *) pop_vchannel1[3] : _028_[3];
  assign _033_[0] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:53" *) pop_vchannel0[0] : _032_[0];
  assign _033_[1] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:53" *) pop_vchannel0[1] : _032_[1];
  assign _033_[2] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:53" *) pop_vchannel0[2] : _032_[2];
  assign _033_[3] = valid_channel[0] ? (* src = "modules/roundrobin/roundrobin.v:53" *) pop_vchannel0[3] : _032_[3];
  assign _035_[0] = _013_ ? (* src = "modules/roundrobin/roundrobin.v:49" *) _022_[0] : wghtd_output[0];
  assign _035_[1] = _013_ ? (* src = "modules/roundrobin/roundrobin.v:49" *) _022_[1] : wghtd_output[1];
  assign _035_[2] = _013_ ? (* src = "modules/roundrobin/roundrobin.v:49" *) _022_[2] : wghtd_output[2];
  assign _035_[3] = _013_ ? (* src = "modules/roundrobin/roundrobin.v:49" *) _022_[3] : wghtd_output[3];
  assign _000_[0] = rst ? (* src = "modules/roundrobin/roundrobin.v:46" *) 1'b0 : _035_[0];
  assign _000_[1] = rst ? (* src = "modules/roundrobin/roundrobin.v:46" *) 1'b0 : _035_[1];
  assign _000_[2] = rst ? (* src = "modules/roundrobin/roundrobin.v:46" *) 1'b0 : _035_[2];
  assign _000_[3] = rst ? (* src = "modules/roundrobin/roundrobin.v:46" *) 1'b0 : _035_[3];
  assign _022_[0] = _036_ ? (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *) _021_[0] : wghtd_output[0];
  assign _022_[1] = _036_ ? (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *) _021_[1] : wghtd_output[1];
  assign _022_[2] = _036_ ? (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *) _021_[2] : wghtd_output[2];
  assign _022_[3] = _036_ ? (* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:445" *) _021_[3] : wghtd_output[3];
  (* src = "modules/roundrobin/roundrobin.v:45" *)
  always @(posedge clk)
      wghtd_output[0] <= _000_[0];
  (* src = "modules/roundrobin/roundrobin.v:45" *)
  always @(posedge clk)
      wghtd_output[1] <= _000_[1];
  (* src = "modules/roundrobin/roundrobin.v:45" *)
  always @(posedge clk)
      wghtd_output[2] <= _000_[2];
  (* src = "modules/roundrobin/roundrobin.v:45" *)
  always @(posedge clk)
      wghtd_output[3] <= _000_[3];
  assign _009_[1] = arbiter[1] ^(* src = "modules/roundrobin/roundrobin.v:51" *)  1'b1;
  assign _009_[0] = arbiter[0] ^(* src = "modules/roundrobin/roundrobin.v:51" *)  1'b1;
  assign _020_[12] = _033_[0] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _034_;
  assign _020_[13] = _033_[1] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _034_;
  assign _020_[14] = _033_[2] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _034_;
  assign _020_[15] = _033_[3] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _034_;
  assign _020_[8] = _030_[0] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _031_;
  assign _020_[9] = _030_[1] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _031_;
  assign _020_[10] = _030_[2] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _031_;
  assign _020_[11] = _030_[3] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _031_;
  assign _020_[4] = _026_[0] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _027_;
  assign _020_[5] = _026_[1] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _027_;
  assign _020_[6] = _026_[2] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _027_;
  assign _020_[7] = _026_[3] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _027_;
  assign _020_[0] = _019_[0] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _023_;
  assign _020_[1] = _019_[1] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _023_;
  assign _020_[2] = _019_[2] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _023_;
  assign _020_[3] = _019_[3] &(* src = "modules/roundrobin/roundrobin.v:51|<techmap.v>:434" *)  _023_;
endmodule