`include "cmos_cells.v"
/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "fifo.v:2" *)
module fifoSintetizado(clk, rst, wr_en, rd_en, almostEmpty, almostFull, DataIn, DataOut, fifo_counter);
  (* src = "fifo.v:42" *)
  wire [3:0] _000_;
  (* src = "fifo.v:25" *)
  wire [3:0] _001_;
  (* src = "fifo.v:67" *)
  wire [2:0] _002_;
  (* src = "fifo.v:67" *)
  wire [2:0] _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire _290_;
  wire _291_;
  wire _292_;
  (* src = "fifo.v:9" *)
  input [3:0] DataIn;
  (* src = "fifo.v:10" *)
  output [3:0] DataOut;
  (* src = "fifo.v:7" *)
  output almostEmpty;
  (* src = "fifo.v:8" *)
  output almostFull;
  (* src = "fifo.v:3" *)
  input clk;
  (* src = "fifo.v:11" *)
  output [3:0] fifo_counter;
  wire [3:0] \ram[0] ;
  wire [3:0] \ram[1] ;
  wire [3:0] \ram[2] ;
  wire [3:0] \ram[3] ;
  wire [3:0] \ram[4] ;
  wire [3:0] \ram[5] ;
  wire [3:0] \ram[6] ;
  wire [3:0] \ram[7] ;
  (* src = "fifo.v:6" *)
  input rd_en;
  (* src = "fifo.v:16" *)
  wire [2:0] rd_ptr;
  (* src = "fifo.v:4" *)
  input rst;
  (* src = "fifo.v:5" *)
  input wr_en;
  (* src = "fifo.v:17" *)
  wire [2:0] wr_ptr;
  NOT _293_ (
    .A(fifo_counter[1]),
    .Y(_004_)
  );
  NOT _294_ (
    .A(fifo_counter[0]),
    .Y(_005_)
  );
  NOR _295_ (
    .A(_005_),
    .B(_004_),
    .Y(_006_)
  );
  NOT _296_ (
    .A(fifo_counter[2]),
    .Y(_007_)
  );
  NOT _297_ (
    .A(fifo_counter[3]),
    .Y(_008_)
  );
  NAND _298_ (
    .A(_008_),
    .B(_007_),
    .Y(_009_)
  );
  NOR _299_ (
    .A(_009_),
    .B(_006_),
    .Y(almostEmpty)
  );
  NAND _300_ (
    .A(fifo_counter[2]),
    .B(fifo_counter[1]),
    .Y(_010_)
  );
  NAND _301_ (
    .A(_010_),
    .B(_008_),
    .Y(almostFull)
  );
  NOT _302_ (
    .A(wr_ptr[0]),
    .Y(_011_)
  );
  NOR _303_ (
    .A(_007_),
    .B(_004_),
    .Y(_012_)
  );
  NOR _304_ (
    .A(_012_),
    .B(fifo_counter[3]),
    .Y(_013_)
  );
  NAND _305_ (
    .A(_013_),
    .B(wr_en),
    .Y(_014_)
  );
  NOR _306_ (
    .A(_014_),
    .B(_011_),
    .Y(_015_)
  );
  NOT _307_ (
    .A(wr_en),
    .Y(_016_)
  );
  NOR _308_ (
    .A(almostFull),
    .B(_016_),
    .Y(_017_)
  );
  NOR _309_ (
    .A(_017_),
    .B(wr_ptr[0]),
    .Y(_018_)
  );
  NOR _310_ (
    .A(_018_),
    .B(_015_),
    .Y(_003_[0])
  );
  NOT _311_ (
    .A(wr_ptr[1]),
    .Y(_019_)
  );
  NAND _312_ (
    .A(_017_),
    .B(wr_ptr[0]),
    .Y(_020_)
  );
  NOR _313_ (
    .A(_020_),
    .B(_019_),
    .Y(_021_)
  );
  NOR _314_ (
    .A(_015_),
    .B(wr_ptr[1]),
    .Y(_022_)
  );
  NOR _315_ (
    .A(_022_),
    .B(_021_),
    .Y(_003_[1])
  );
  NAND _316_ (
    .A(_015_),
    .B(wr_ptr[1]),
    .Y(_023_)
  );
  NAND _317_ (
    .A(_023_),
    .B(wr_ptr[2]),
    .Y(_024_)
  );
  NOT _318_ (
    .A(wr_ptr[2]),
    .Y(_025_)
  );
  NAND _319_ (
    .A(_021_),
    .B(_025_),
    .Y(_026_)
  );
  NAND _320_ (
    .A(_026_),
    .B(_024_),
    .Y(_003_[2])
  );
  NOT _321_ (
    .A(rd_ptr[0]),
    .Y(_027_)
  );
  NAND _322_ (
    .A(fifo_counter[0]),
    .B(fifo_counter[1]),
    .Y(_028_)
  );
  NOR _323_ (
    .A(fifo_counter[3]),
    .B(fifo_counter[2]),
    .Y(_029_)
  );
  NAND _324_ (
    .A(_029_),
    .B(_028_),
    .Y(_030_)
  );
  NAND _325_ (
    .A(_030_),
    .B(rd_en),
    .Y(_031_)
  );
  NOR _326_ (
    .A(_031_),
    .B(_027_),
    .Y(_032_)
  );
  NOT _327_ (
    .A(rd_en),
    .Y(_033_)
  );
  NOR _328_ (
    .A(almostEmpty),
    .B(_033_),
    .Y(_035_)
  );
  NOR _329_ (
    .A(_035_),
    .B(rd_ptr[0]),
    .Y(_036_)
  );
  NOR _330_ (
    .A(_036_),
    .B(_032_),
    .Y(_002_[0])
  );
  NAND _331_ (
    .A(_032_),
    .B(rd_ptr[1]),
    .Y(_038_)
  );
  NOT _332_ (
    .A(_038_),
    .Y(_040_)
  );
  NOR _333_ (
    .A(_032_),
    .B(rd_ptr[1]),
    .Y(_041_)
  );
  NOR _334_ (
    .A(_041_),
    .B(_040_),
    .Y(_002_[1])
  );
  NOR _335_ (
    .A(_040_),
    .B(rd_ptr[2]),
    .Y(_043_)
  );
  NOT _336_ (
    .A(rd_ptr[2]),
    .Y(_045_)
  );
  NOR _337_ (
    .A(_038_),
    .B(_045_),
    .Y(_047_)
  );
  NOR _338_ (
    .A(_047_),
    .B(_043_),
    .Y(_002_[2])
  );
  NAND _339_ (
    .A(_031_),
    .B(DataOut[0]),
    .Y(_050_)
  );
  NAND _340_ (
    .A(\ram[6] [0]),
    .B(_027_),
    .Y(_051_)
  );
  NAND _341_ (
    .A(\ram[7] [0]),
    .B(rd_ptr[0]),
    .Y(_053_)
  );
  NAND _342_ (
    .A(_053_),
    .B(_051_),
    .Y(_055_)
  );
  NAND _343_ (
    .A(_055_),
    .B(rd_ptr[2]),
    .Y(_057_)
  );
  NAND _344_ (
    .A(\ram[2] [0]),
    .B(_027_),
    .Y(_059_)
  );
  NAND _345_ (
    .A(\ram[3] [0]),
    .B(rd_ptr[0]),
    .Y(_060_)
  );
  NAND _346_ (
    .A(_060_),
    .B(_059_),
    .Y(_062_)
  );
  NAND _347_ (
    .A(_062_),
    .B(_045_),
    .Y(_064_)
  );
  NAND _348_ (
    .A(_064_),
    .B(_057_),
    .Y(_066_)
  );
  NAND _349_ (
    .A(_066_),
    .B(rd_ptr[1]),
    .Y(_068_)
  );
  NOT _350_ (
    .A(rd_ptr[1]),
    .Y(_069_)
  );
  NAND _351_ (
    .A(\ram[4] [0]),
    .B(_027_),
    .Y(_071_)
  );
  NAND _352_ (
    .A(\ram[5] [0]),
    .B(rd_ptr[0]),
    .Y(_073_)
  );
  NAND _353_ (
    .A(_073_),
    .B(_071_),
    .Y(_075_)
  );
  NAND _354_ (
    .A(_075_),
    .B(rd_ptr[2]),
    .Y(_077_)
  );
  NAND _355_ (
    .A(_027_),
    .B(\ram[0] [0]),
    .Y(_078_)
  );
  NAND _356_ (
    .A(rd_ptr[0]),
    .B(\ram[1] [0]),
    .Y(_080_)
  );
  NAND _357_ (
    .A(_080_),
    .B(_078_),
    .Y(_082_)
  );
  NAND _358_ (
    .A(_082_),
    .B(_045_),
    .Y(_084_)
  );
  NAND _359_ (
    .A(_084_),
    .B(_077_),
    .Y(_086_)
  );
  NAND _360_ (
    .A(_086_),
    .B(_069_),
    .Y(_087_)
  );
  NAND _361_ (
    .A(_087_),
    .B(_068_),
    .Y(_089_)
  );
  NAND _362_ (
    .A(_089_),
    .B(_035_),
    .Y(_091_)
  );
  NAND _363_ (
    .A(_091_),
    .B(_050_),
    .Y(_000_[0])
  );
  NAND _364_ (
    .A(_031_),
    .B(DataOut[1]),
    .Y(_094_)
  );
  NAND _365_ (
    .A(\ram[6] [1]),
    .B(_027_),
    .Y(_095_)
  );
  NAND _366_ (
    .A(\ram[7] [1]),
    .B(rd_ptr[0]),
    .Y(_097_)
  );
  NAND _367_ (
    .A(_097_),
    .B(_095_),
    .Y(_099_)
  );
  NAND _368_ (
    .A(_099_),
    .B(rd_ptr[2]),
    .Y(_101_)
  );
  NAND _369_ (
    .A(\ram[2] [1]),
    .B(_027_),
    .Y(_103_)
  );
  NAND _370_ (
    .A(\ram[3] [1]),
    .B(rd_ptr[0]),
    .Y(_104_)
  );
  NAND _371_ (
    .A(_104_),
    .B(_103_),
    .Y(_105_)
  );
  NAND _372_ (
    .A(_105_),
    .B(_045_),
    .Y(_106_)
  );
  NAND _373_ (
    .A(_106_),
    .B(_101_),
    .Y(_107_)
  );
  NAND _374_ (
    .A(_107_),
    .B(rd_ptr[1]),
    .Y(_108_)
  );
  NAND _375_ (
    .A(\ram[4] [1]),
    .B(_027_),
    .Y(_109_)
  );
  NAND _376_ (
    .A(\ram[5] [1]),
    .B(rd_ptr[0]),
    .Y(_110_)
  );
  NAND _377_ (
    .A(_110_),
    .B(_109_),
    .Y(_111_)
  );
  NAND _378_ (
    .A(_111_),
    .B(rd_ptr[2]),
    .Y(_112_)
  );
  NAND _379_ (
    .A(\ram[0] [1]),
    .B(_027_),
    .Y(_113_)
  );
  NAND _380_ (
    .A(\ram[1] [1]),
    .B(rd_ptr[0]),
    .Y(_114_)
  );
  NAND _381_ (
    .A(_114_),
    .B(_113_),
    .Y(_115_)
  );
  NAND _382_ (
    .A(_115_),
    .B(_045_),
    .Y(_116_)
  );
  NAND _383_ (
    .A(_116_),
    .B(_112_),
    .Y(_117_)
  );
  NAND _384_ (
    .A(_117_),
    .B(_069_),
    .Y(_118_)
  );
  NAND _385_ (
    .A(_118_),
    .B(_108_),
    .Y(_119_)
  );
  NAND _386_ (
    .A(_119_),
    .B(_035_),
    .Y(_120_)
  );
  NAND _387_ (
    .A(_120_),
    .B(_094_),
    .Y(_000_[1])
  );
  NAND _388_ (
    .A(_031_),
    .B(DataOut[2]),
    .Y(_121_)
  );
  NAND _389_ (
    .A(\ram[6] [2]),
    .B(_027_),
    .Y(_122_)
  );
  NAND _390_ (
    .A(\ram[7] [2]),
    .B(rd_ptr[0]),
    .Y(_123_)
  );
  NAND _391_ (
    .A(_123_),
    .B(_122_),
    .Y(_124_)
  );
  NAND _392_ (
    .A(_124_),
    .B(rd_ptr[2]),
    .Y(_125_)
  );
  NAND _393_ (
    .A(\ram[2] [2]),
    .B(_027_),
    .Y(_126_)
  );
  NAND _394_ (
    .A(\ram[3] [2]),
    .B(rd_ptr[0]),
    .Y(_127_)
  );
  NAND _395_ (
    .A(_127_),
    .B(_126_),
    .Y(_128_)
  );
  NAND _396_ (
    .A(_128_),
    .B(_045_),
    .Y(_129_)
  );
  NAND _397_ (
    .A(_129_),
    .B(_125_),
    .Y(_130_)
  );
  NAND _398_ (
    .A(_130_),
    .B(rd_ptr[1]),
    .Y(_131_)
  );
  NAND _399_ (
    .A(\ram[4] [2]),
    .B(_027_),
    .Y(_132_)
  );
  NAND _400_ (
    .A(\ram[5] [2]),
    .B(rd_ptr[0]),
    .Y(_133_)
  );
  NAND _401_ (
    .A(_133_),
    .B(_132_),
    .Y(_134_)
  );
  NAND _402_ (
    .A(_134_),
    .B(rd_ptr[2]),
    .Y(_135_)
  );
  NAND _403_ (
    .A(\ram[0] [2]),
    .B(_027_),
    .Y(_136_)
  );
  NAND _404_ (
    .A(\ram[1] [2]),
    .B(rd_ptr[0]),
    .Y(_137_)
  );
  NAND _405_ (
    .A(_137_),
    .B(_136_),
    .Y(_138_)
  );
  NAND _406_ (
    .A(_138_),
    .B(_045_),
    .Y(_139_)
  );
  NAND _407_ (
    .A(_139_),
    .B(_135_),
    .Y(_140_)
  );
  NAND _408_ (
    .A(_140_),
    .B(_069_),
    .Y(_141_)
  );
  NAND _409_ (
    .A(_141_),
    .B(_131_),
    .Y(_142_)
  );
  NAND _410_ (
    .A(_142_),
    .B(_035_),
    .Y(_143_)
  );
  NAND _411_ (
    .A(_143_),
    .B(_121_),
    .Y(_000_[2])
  );
  NAND _412_ (
    .A(_031_),
    .B(DataOut[3]),
    .Y(_144_)
  );
  NAND _413_ (
    .A(\ram[6] [3]),
    .B(_027_),
    .Y(_145_)
  );
  NAND _414_ (
    .A(\ram[7] [3]),
    .B(rd_ptr[0]),
    .Y(_146_)
  );
  NAND _415_ (
    .A(_146_),
    .B(_145_),
    .Y(_147_)
  );
  NAND _416_ (
    .A(_147_),
    .B(rd_ptr[2]),
    .Y(_148_)
  );
  NAND _417_ (
    .A(\ram[2] [3]),
    .B(_027_),
    .Y(_149_)
  );
  NAND _418_ (
    .A(\ram[3] [3]),
    .B(rd_ptr[0]),
    .Y(_150_)
  );
  NAND _419_ (
    .A(_150_),
    .B(_149_),
    .Y(_151_)
  );
  NAND _420_ (
    .A(_151_),
    .B(_045_),
    .Y(_152_)
  );
  NAND _421_ (
    .A(_152_),
    .B(_148_),
    .Y(_153_)
  );
  NAND _422_ (
    .A(_153_),
    .B(rd_ptr[1]),
    .Y(_154_)
  );
  NAND _423_ (
    .A(\ram[4] [3]),
    .B(_027_),
    .Y(_155_)
  );
  NAND _424_ (
    .A(\ram[5] [3]),
    .B(rd_ptr[0]),
    .Y(_156_)
  );
  NAND _425_ (
    .A(_156_),
    .B(_155_),
    .Y(_157_)
  );
  NAND _426_ (
    .A(_157_),
    .B(rd_ptr[2]),
    .Y(_158_)
  );
  NAND _427_ (
    .A(\ram[0] [3]),
    .B(_027_),
    .Y(_159_)
  );
  NAND _428_ (
    .A(\ram[1] [3]),
    .B(rd_ptr[0]),
    .Y(_160_)
  );
  NAND _429_ (
    .A(_160_),
    .B(_159_),
    .Y(_161_)
  );
  NAND _430_ (
    .A(_161_),
    .B(_045_),
    .Y(_162_)
  );
  NAND _431_ (
    .A(_162_),
    .B(_158_),
    .Y(_163_)
  );
  NAND _432_ (
    .A(_163_),
    .B(_069_),
    .Y(_164_)
  );
  NAND _433_ (
    .A(_164_),
    .B(_154_),
    .Y(_165_)
  );
  NAND _434_ (
    .A(_165_),
    .B(_035_),
    .Y(_166_)
  );
  NAND _435_ (
    .A(_166_),
    .B(_144_),
    .Y(_000_[3])
  );
  NOR _436_ (
    .A(_017_),
    .B(_005_),
    .Y(_167_)
  );
  NAND _437_ (
    .A(_017_),
    .B(_005_),
    .Y(_168_)
  );
  NOT _438_ (
    .A(_168_),
    .Y(_169_)
  );
  NOR _439_ (
    .A(_169_),
    .B(_167_),
    .Y(_170_)
  );
  NAND _440_ (
    .A(_170_),
    .B(_035_),
    .Y(_171_)
  );
  NAND _441_ (
    .A(_014_),
    .B(fifo_counter[0]),
    .Y(_172_)
  );
  NAND _442_ (
    .A(_168_),
    .B(_172_),
    .Y(_173_)
  );
  NAND _443_ (
    .A(_173_),
    .B(_031_),
    .Y(_174_)
  );
  NAND _444_ (
    .A(_174_),
    .B(_171_),
    .Y(_001_[0])
  );
  NAND _445_ (
    .A(_035_),
    .B(_017_),
    .Y(_175_)
  );
  NOR _446_ (
    .A(_035_),
    .B(fifo_counter[0]),
    .Y(_176_)
  );
  NOR _447_ (
    .A(_176_),
    .B(_167_),
    .Y(_177_)
  );
  NAND _448_ (
    .A(_177_),
    .B(_175_),
    .Y(_178_)
  );
  NOR _449_ (
    .A(_178_),
    .B(_004_),
    .Y(_179_)
  );
  NOR _450_ (
    .A(_031_),
    .B(_014_),
    .Y(_180_)
  );
  NAND _451_ (
    .A(_031_),
    .B(_005_),
    .Y(_181_)
  );
  NAND _452_ (
    .A(_181_),
    .B(_172_),
    .Y(_182_)
  );
  NOR _453_ (
    .A(_182_),
    .B(_180_),
    .Y(_183_)
  );
  NOR _454_ (
    .A(_183_),
    .B(fifo_counter[1]),
    .Y(_184_)
  );
  NOR _455_ (
    .A(_184_),
    .B(_179_),
    .Y(_001_[1])
  );
  NOR _456_ (
    .A(fifo_counter[0]),
    .B(fifo_counter[1]),
    .Y(_185_)
  );
  NAND _457_ (
    .A(_185_),
    .B(_035_),
    .Y(_186_)
  );
  NAND _458_ (
    .A(_017_),
    .B(_006_),
    .Y(_187_)
  );
  NAND _459_ (
    .A(_187_),
    .B(_186_),
    .Y(_188_)
  );
  NAND _460_ (
    .A(_188_),
    .B(_175_),
    .Y(_189_)
  );
  NOR _461_ (
    .A(_189_),
    .B(_007_),
    .Y(_190_)
  );
  NOT _462_ (
    .A(_185_),
    .Y(_191_)
  );
  NOR _463_ (
    .A(_191_),
    .B(_031_),
    .Y(_192_)
  );
  NOR _464_ (
    .A(_014_),
    .B(_028_),
    .Y(_193_)
  );
  NOR _465_ (
    .A(_193_),
    .B(_192_),
    .Y(_194_)
  );
  NOR _466_ (
    .A(_194_),
    .B(_180_),
    .Y(_195_)
  );
  NOR _467_ (
    .A(_195_),
    .B(fifo_counter[2]),
    .Y(_196_)
  );
  NOR _468_ (
    .A(_196_),
    .B(_190_),
    .Y(_001_[2])
  );
  NOR _469_ (
    .A(_186_),
    .B(fifo_counter[2]),
    .Y(_197_)
  );
  NOR _470_ (
    .A(_197_),
    .B(_008_),
    .Y(_001_[3])
  );
  NAND _471_ (
    .A(_017_),
    .B(_011_),
    .Y(_198_)
  );
  NOR _472_ (
    .A(wr_ptr[2]),
    .B(wr_ptr[1]),
    .Y(_199_)
  );
  NOT _473_ (
    .A(_199_),
    .Y(_200_)
  );
  NOR _474_ (
    .A(_200_),
    .B(_198_),
    .Y(_201_)
  );
  NAND _475_ (
    .A(_201_),
    .B(DataIn[0]),
    .Y(_202_)
  );
  NOT _476_ (
    .A(_201_),
    .Y(_203_)
  );
  NAND _477_ (
    .A(_203_),
    .B(\ram[0] [0]),
    .Y(_204_)
  );
  NAND _478_ (
    .A(_204_),
    .B(_202_),
    .Y(_034_)
  );
  NAND _479_ (
    .A(_201_),
    .B(DataIn[1]),
    .Y(_205_)
  );
  NAND _480_ (
    .A(_203_),
    .B(\ram[0] [1]),
    .Y(_206_)
  );
  NAND _481_ (
    .A(_206_),
    .B(_205_),
    .Y(_037_)
  );
  NAND _482_ (
    .A(_201_),
    .B(DataIn[2]),
    .Y(_207_)
  );
  NAND _483_ (
    .A(_203_),
    .B(\ram[0] [2]),
    .Y(_208_)
  );
  NAND _484_ (
    .A(_208_),
    .B(_207_),
    .Y(_039_)
  );
  NAND _485_ (
    .A(_201_),
    .B(DataIn[3]),
    .Y(_209_)
  );
  NAND _486_ (
    .A(_203_),
    .B(\ram[0] [3]),
    .Y(_210_)
  );
  NAND _487_ (
    .A(_210_),
    .B(_209_),
    .Y(_042_)
  );
  NOR _488_ (
    .A(_200_),
    .B(_020_),
    .Y(_211_)
  );
  NAND _489_ (
    .A(_211_),
    .B(DataIn[0]),
    .Y(_212_)
  );
  NOT _490_ (
    .A(_211_),
    .Y(_213_)
  );
  NAND _491_ (
    .A(_213_),
    .B(\ram[1] [0]),
    .Y(_214_)
  );
  NAND _492_ (
    .A(_214_),
    .B(_212_),
    .Y(_044_)
  );
  NAND _493_ (
    .A(_211_),
    .B(DataIn[1]),
    .Y(_215_)
  );
  NAND _494_ (
    .A(_213_),
    .B(\ram[1] [1]),
    .Y(_216_)
  );
  NAND _495_ (
    .A(_216_),
    .B(_215_),
    .Y(_046_)
  );
  NAND _496_ (
    .A(_211_),
    .B(DataIn[2]),
    .Y(_217_)
  );
  NAND _497_ (
    .A(_213_),
    .B(\ram[1] [2]),
    .Y(_218_)
  );
  NAND _498_ (
    .A(_218_),
    .B(_217_),
    .Y(_048_)
  );
  NAND _499_ (
    .A(_211_),
    .B(DataIn[3]),
    .Y(_219_)
  );
  NAND _500_ (
    .A(_213_),
    .B(\ram[1] [3]),
    .Y(_220_)
  );
  NAND _501_ (
    .A(_220_),
    .B(_219_),
    .Y(_049_)
  );
  NOR _502_ (
    .A(_014_),
    .B(wr_ptr[0]),
    .Y(_221_)
  );
  NAND _503_ (
    .A(_221_),
    .B(wr_ptr[1]),
    .Y(_222_)
  );
  NOR _504_ (
    .A(_222_),
    .B(wr_ptr[2]),
    .Y(_223_)
  );
  NAND _505_ (
    .A(_223_),
    .B(DataIn[0]),
    .Y(_224_)
  );
  NOR _506_ (
    .A(_198_),
    .B(_019_),
    .Y(_225_)
  );
  NAND _507_ (
    .A(_225_),
    .B(_025_),
    .Y(_226_)
  );
  NAND _508_ (
    .A(_226_),
    .B(\ram[2] [0]),
    .Y(_227_)
  );
  NAND _509_ (
    .A(_227_),
    .B(_224_),
    .Y(_052_)
  );
  NAND _510_ (
    .A(_223_),
    .B(DataIn[1]),
    .Y(_228_)
  );
  NAND _511_ (
    .A(_226_),
    .B(\ram[2] [1]),
    .Y(_229_)
  );
  NAND _512_ (
    .A(_229_),
    .B(_228_),
    .Y(_054_)
  );
  NAND _513_ (
    .A(_223_),
    .B(DataIn[2]),
    .Y(_230_)
  );
  NAND _514_ (
    .A(_226_),
    .B(\ram[2] [2]),
    .Y(_231_)
  );
  NAND _515_ (
    .A(_231_),
    .B(_230_),
    .Y(_056_)
  );
  NAND _516_ (
    .A(_223_),
    .B(DataIn[3]),
    .Y(_232_)
  );
  NAND _517_ (
    .A(_226_),
    .B(\ram[2] [3]),
    .Y(_233_)
  );
  NAND _518_ (
    .A(_233_),
    .B(_232_),
    .Y(_058_)
  );
  NOR _519_ (
    .A(_023_),
    .B(wr_ptr[2]),
    .Y(_234_)
  );
  NAND _520_ (
    .A(_234_),
    .B(DataIn[0]),
    .Y(_235_)
  );
  NAND _521_ (
    .A(_026_),
    .B(\ram[3] [0]),
    .Y(_236_)
  );
  NAND _522_ (
    .A(_236_),
    .B(_235_),
    .Y(_061_)
  );
  NAND _523_ (
    .A(_234_),
    .B(DataIn[1]),
    .Y(_237_)
  );
  NAND _524_ (
    .A(_026_),
    .B(\ram[3] [1]),
    .Y(_238_)
  );
  NAND _525_ (
    .A(_238_),
    .B(_237_),
    .Y(_063_)
  );
  NAND _526_ (
    .A(_234_),
    .B(DataIn[2]),
    .Y(_239_)
  );
  NAND _527_ (
    .A(_026_),
    .B(\ram[3] [2]),
    .Y(_240_)
  );
  NAND _528_ (
    .A(_240_),
    .B(_239_),
    .Y(_065_)
  );
  NAND _529_ (
    .A(_234_),
    .B(DataIn[3]),
    .Y(_241_)
  );
  NAND _530_ (
    .A(_026_),
    .B(\ram[3] [3]),
    .Y(_242_)
  );
  NAND _531_ (
    .A(_242_),
    .B(_241_),
    .Y(_067_)
  );
  NOR _532_ (
    .A(_025_),
    .B(wr_ptr[1]),
    .Y(_243_)
  );
  NOT _533_ (
    .A(_243_),
    .Y(_244_)
  );
  NOR _534_ (
    .A(_244_),
    .B(_198_),
    .Y(_245_)
  );
  NAND _535_ (
    .A(_245_),
    .B(DataIn[0]),
    .Y(_246_)
  );
  NOT _536_ (
    .A(_245_),
    .Y(_247_)
  );
  NAND _537_ (
    .A(_247_),
    .B(\ram[4] [0]),
    .Y(_248_)
  );
  NAND _538_ (
    .A(_248_),
    .B(_246_),
    .Y(_070_)
  );
  NAND _539_ (
    .A(_245_),
    .B(DataIn[1]),
    .Y(_249_)
  );
  NAND _540_ (
    .A(_247_),
    .B(\ram[4] [1]),
    .Y(_250_)
  );
  NAND _541_ (
    .A(_250_),
    .B(_249_),
    .Y(_072_)
  );
  NAND _542_ (
    .A(_245_),
    .B(DataIn[2]),
    .Y(_251_)
  );
  NAND _543_ (
    .A(_247_),
    .B(\ram[4] [2]),
    .Y(_252_)
  );
  NAND _544_ (
    .A(_252_),
    .B(_251_),
    .Y(_074_)
  );
  NAND _545_ (
    .A(_245_),
    .B(DataIn[3]),
    .Y(_253_)
  );
  NAND _546_ (
    .A(_247_),
    .B(\ram[4] [3]),
    .Y(_254_)
  );
  NAND _547_ (
    .A(_254_),
    .B(_253_),
    .Y(_076_)
  );
  NOR _548_ (
    .A(_244_),
    .B(_020_),
    .Y(_255_)
  );
  NAND _549_ (
    .A(_255_),
    .B(DataIn[0]),
    .Y(_256_)
  );
  NOT _550_ (
    .A(_255_),
    .Y(_257_)
  );
  NAND _551_ (
    .A(_257_),
    .B(\ram[5] [0]),
    .Y(_258_)
  );
  NAND _552_ (
    .A(_258_),
    .B(_256_),
    .Y(_079_)
  );
  NAND _553_ (
    .A(_255_),
    .B(DataIn[1]),
    .Y(_259_)
  );
  NAND _554_ (
    .A(_257_),
    .B(\ram[5] [1]),
    .Y(_260_)
  );
  NAND _555_ (
    .A(_260_),
    .B(_259_),
    .Y(_081_)
  );
  NAND _556_ (
    .A(_255_),
    .B(DataIn[2]),
    .Y(_261_)
  );
  NAND _557_ (
    .A(_257_),
    .B(\ram[5] [2]),
    .Y(_262_)
  );
  NAND _558_ (
    .A(_262_),
    .B(_261_),
    .Y(_083_)
  );
  NAND _559_ (
    .A(_255_),
    .B(DataIn[3]),
    .Y(_263_)
  );
  NAND _560_ (
    .A(_257_),
    .B(\ram[5] [3]),
    .Y(_264_)
  );
  NAND _561_ (
    .A(_264_),
    .B(_263_),
    .Y(_085_)
  );
  NOR _562_ (
    .A(_222_),
    .B(_025_),
    .Y(_265_)
  );
  NAND _563_ (
    .A(_265_),
    .B(DataIn[0]),
    .Y(_266_)
  );
  NAND _564_ (
    .A(_225_),
    .B(wr_ptr[2]),
    .Y(_267_)
  );
  NAND _565_ (
    .A(_267_),
    .B(\ram[6] [0]),
    .Y(_268_)
  );
  NAND _566_ (
    .A(_268_),
    .B(_266_),
    .Y(_088_)
  );
  NAND _567_ (
    .A(_265_),
    .B(DataIn[1]),
    .Y(_269_)
  );
  NAND _568_ (
    .A(_267_),
    .B(\ram[6] [1]),
    .Y(_270_)
  );
  NAND _569_ (
    .A(_270_),
    .B(_269_),
    .Y(_090_)
  );
  NAND _570_ (
    .A(_265_),
    .B(DataIn[2]),
    .Y(_271_)
  );
  NAND _571_ (
    .A(_267_),
    .B(\ram[6] [2]),
    .Y(_272_)
  );
  NAND _572_ (
    .A(_272_),
    .B(_271_),
    .Y(_092_)
  );
  NAND _573_ (
    .A(_265_),
    .B(DataIn[3]),
    .Y(_273_)
  );
  NAND _574_ (
    .A(_267_),
    .B(\ram[6] [3]),
    .Y(_274_)
  );
  NAND _575_ (
    .A(_274_),
    .B(_273_),
    .Y(_093_)
  );
  NAND _576_ (
    .A(_021_),
    .B(wr_ptr[2]),
    .Y(_275_)
  );
  NOT _577_ (
    .A(DataIn[0]),
    .Y(_276_)
  );
  NOR _578_ (
    .A(_014_),
    .B(_276_),
    .Y(_277_)
  );
  NOR _579_ (
    .A(_277_),
    .B(_275_),
    .Y(_278_)
  );
  NOR _580_ (
    .A(_023_),
    .B(_025_),
    .Y(_279_)
  );
  NOR _581_ (
    .A(_279_),
    .B(\ram[7] [0]),
    .Y(_280_)
  );
  NOR _582_ (
    .A(_280_),
    .B(_278_),
    .Y(_096_)
  );
  NOT _583_ (
    .A(DataIn[1]),
    .Y(_281_)
  );
  NOR _584_ (
    .A(_014_),
    .B(_281_),
    .Y(_282_)
  );
  NOR _585_ (
    .A(_282_),
    .B(_275_),
    .Y(_283_)
  );
  NOR _586_ (
    .A(_279_),
    .B(\ram[7] [1]),
    .Y(_284_)
  );
  NOR _587_ (
    .A(_284_),
    .B(_283_),
    .Y(_098_)
  );
  NOT _588_ (
    .A(DataIn[2]),
    .Y(_285_)
  );
  NOR _589_ (
    .A(_014_),
    .B(_285_),
    .Y(_286_)
  );
  NOR _590_ (
    .A(_286_),
    .B(_275_),
    .Y(_287_)
  );
  NOR _591_ (
    .A(_279_),
    .B(\ram[7] [2]),
    .Y(_288_)
  );
  NOR _592_ (
    .A(_288_),
    .B(_287_),
    .Y(_100_)
  );
  NOT _593_ (
    .A(DataIn[3]),
    .Y(_289_)
  );
  NOR _594_ (
    .A(_014_),
    .B(_289_),
    .Y(_290_)
  );
  NOR _595_ (
    .A(_290_),
    .B(_275_),
    .Y(_291_)
  );
  NOR _596_ (
    .A(_279_),
    .B(\ram[7] [3]),
    .Y(_292_)
  );
  NOR _597_ (
    .A(_292_),
    .B(_291_),
    .Y(_102_)
  );
  DFF _598_ (
    .C(clk),
    .D(_096_),
    .Q(\ram[7] [0])
  );
  DFF _599_ (
    .C(clk),
    .D(_098_),
    .Q(\ram[7] [1])
  );
  DFF _600_ (
    .C(clk),
    .D(_100_),
    .Q(\ram[7] [2])
  );
  DFF _601_ (
    .C(clk),
    .D(_102_),
    .Q(\ram[7] [3])
  );
  DFF _602_ (
    .C(clk),
    .D(_088_),
    .Q(\ram[6] [0])
  );
  DFF _603_ (
    .C(clk),
    .D(_090_),
    .Q(\ram[6] [1])
  );
  DFF _604_ (
    .C(clk),
    .D(_092_),
    .Q(\ram[6] [2])
  );
  DFF _605_ (
    .C(clk),
    .D(_093_),
    .Q(\ram[6] [3])
  );
  DFF _606_ (
    .C(clk),
    .D(_079_),
    .Q(\ram[5] [0])
  );
  DFF _607_ (
    .C(clk),
    .D(_081_),
    .Q(\ram[5] [1])
  );
  DFF _608_ (
    .C(clk),
    .D(_083_),
    .Q(\ram[5] [2])
  );
  DFF _609_ (
    .C(clk),
    .D(_085_),
    .Q(\ram[5] [3])
  );
  DFF _610_ (
    .C(clk),
    .D(_070_),
    .Q(\ram[4] [0])
  );
  DFF _611_ (
    .C(clk),
    .D(_072_),
    .Q(\ram[4] [1])
  );
  DFF _612_ (
    .C(clk),
    .D(_074_),
    .Q(\ram[4] [2])
  );
  DFF _613_ (
    .C(clk),
    .D(_076_),
    .Q(\ram[4] [3])
  );
  DFF _614_ (
    .C(clk),
    .D(_034_),
    .Q(\ram[0] [0])
  );
  DFF _615_ (
    .C(clk),
    .D(_037_),
    .Q(\ram[0] [1])
  );
  DFF _616_ (
    .C(clk),
    .D(_039_),
    .Q(\ram[0] [2])
  );
  DFF _617_ (
    .C(clk),
    .D(_042_),
    .Q(\ram[0] [3])
  );
  DFF _618_ (
    .C(clk),
    .D(_061_),
    .Q(\ram[3] [0])
  );
  DFF _619_ (
    .C(clk),
    .D(_063_),
    .Q(\ram[3] [1])
  );
  DFF _620_ (
    .C(clk),
    .D(_065_),
    .Q(\ram[3] [2])
  );
  DFF _621_ (
    .C(clk),
    .D(_067_),
    .Q(\ram[3] [3])
  );
  DFF _622_ (
    .C(clk),
    .D(_052_),
    .Q(\ram[2] [0])
  );
  DFF _623_ (
    .C(clk),
    .D(_054_),
    .Q(\ram[2] [1])
  );
  DFF _624_ (
    .C(clk),
    .D(_056_),
    .Q(\ram[2] [2])
  );
  DFF _625_ (
    .C(clk),
    .D(_058_),
    .Q(\ram[2] [3])
  );
  DFF _626_ (
    .C(clk),
    .D(_044_),
    .Q(\ram[1] [0])
  );
  DFF _627_ (
    .C(clk),
    .D(_046_),
    .Q(\ram[1] [1])
  );
  DFF _628_ (
    .C(clk),
    .D(_048_),
    .Q(\ram[1] [2])
  );
  DFF _629_ (
    .C(clk),
    .D(_049_),
    .Q(\ram[1] [3])
  );
  DFFSR _630_ (
    .C(clk),
    .D(_002_[0]),
    .Q(rd_ptr[0]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _631_ (
    .C(clk),
    .D(_002_[1]),
    .Q(rd_ptr[1]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _632_ (
    .C(clk),
    .D(_002_[2]),
    .Q(rd_ptr[2]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _633_ (
    .C(clk),
    .D(_003_[0]),
    .Q(wr_ptr[0]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _634_ (
    .C(clk),
    .D(_003_[1]),
    .Q(wr_ptr[1]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _635_ (
    .C(clk),
    .D(_003_[2]),
    .Q(wr_ptr[2]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _636_ (
    .C(clk),
    .D(_000_[0]),
    .Q(DataOut[0]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _637_ (
    .C(clk),
    .D(_000_[1]),
    .Q(DataOut[1]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _638_ (
    .C(clk),
    .D(_000_[2]),
    .Q(DataOut[2]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _639_ (
    .C(clk),
    .D(_000_[3]),
    .Q(DataOut[3]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _640_ (
    .C(clk),
    .D(_001_[0]),
    .Q(fifo_counter[0]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _641_ (
    .C(clk),
    .D(_001_[1]),
    .Q(fifo_counter[1]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _642_ (
    .C(clk),
    .D(_001_[2]),
    .Q(fifo_counter[2]),
    .R(rst),
    .S(1'b0)
  );
  DFFSR _643_ (
    .C(clk),
    .D(_001_[3]),
    .Q(fifo_counter[3]),
    .R(rst),
    .S(1'b0)
  );
endmodule