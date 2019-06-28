module PolyCircuit( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [1:0]  io_select, // @[:@6.4]
  input  [31:0] io_x, // @[:@6.4]
  output [31:0] io_fofx // @[:@6.4]
);
  wire [63:0] _T_13; // @[exercise1.scala 17:16:@10.4]
  wire  _T_15; // @[exercise1.scala 19:19:@12.4]
  wire [34:0] _T_17; // @[exercise1.scala 20:26:@14.6]
  wire [31:0] _GEN_2; // @[exercise1.scala 15:18:@9.4 exercise1.scala 17:8:@11.4]
  wire [31:0] x_sq; // @[exercise1.scala 15:18:@9.4 exercise1.scala 17:8:@11.4]
  wire [34:0] _GEN_3; // @[exercise1.scala 20:20:@15.6]
  wire [35:0] _T_18; // @[exercise1.scala 20:20:@15.6]
  wire [34:0] _T_19; // @[exercise1.scala 20:20:@16.6]
  wire [34:0] _T_20; // @[exercise1.scala 20:20:@17.6]
  wire [35:0] _T_22; // @[exercise1.scala 20:33:@18.6]
  wire [34:0] _T_23; // @[exercise1.scala 20:33:@19.6]
  wire [34:0] _T_24; // @[exercise1.scala 20:33:@20.6]
  wire  _T_26; // @[exercise1.scala 21:26:@24.6]
  wire [34:0] _T_28; // @[exercise1.scala 22:19:@26.8]
  wire [35:0] _T_30; // @[exercise1.scala 22:32:@27.8]
  wire [35:0] _GEN_4; // @[exercise1.scala 22:26:@28.8]
  wire [36:0] _T_31; // @[exercise1.scala 22:26:@28.8]
  wire [35:0] _T_32; // @[exercise1.scala 22:26:@29.8]
  wire [35:0] _T_33; // @[exercise1.scala 22:26:@30.8]
  wire [36:0] _T_35; // @[exercise1.scala 22:39:@31.8]
  wire [35:0] _T_36; // @[exercise1.scala 22:39:@32.8]
  wire [35:0] _T_37; // @[exercise1.scala 22:39:@33.8]
  wire [35:0] _T_39; // @[exercise1.scala 24:19:@37.8]
  wire [36:0] _T_41; // @[exercise1.scala 24:33:@38.8]
  wire [36:0] _GEN_5; // @[exercise1.scala 24:26:@39.8]
  wire [37:0] _T_42; // @[exercise1.scala 24:26:@39.8]
  wire [36:0] _T_43; // @[exercise1.scala 24:26:@40.8]
  wire [36:0] _T_44; // @[exercise1.scala 24:26:@41.8]
  wire [37:0] _T_46; // @[exercise1.scala 24:40:@42.8]
  wire [36:0] _T_47; // @[exercise1.scala 24:40:@43.8]
  wire [36:0] _T_48; // @[exercise1.scala 24:40:@44.8]
  wire [36:0] _GEN_0; // @[exercise1.scala 21:35:@25.6]
  wire [36:0] _GEN_1; // @[exercise1.scala 19:28:@13.4]
  wire [31:0] _GEN_6; // @[exercise1.scala 14:20:@8.4 exercise1.scala 20:12:@21.6 exercise1.scala 22:12:@34.8 exercise1.scala 24:12:@45.8]
  assign _T_13 = $signed(io_x) * $signed(io_x); // @[exercise1.scala 17:16:@10.4]
  assign _T_15 = io_select == 2'h0; // @[exercise1.scala 19:19:@12.4]
  assign _T_17 = $signed(32'sh2) * $signed(io_x); // @[exercise1.scala 20:26:@14.6]
  assign _GEN_2 = _T_13[31:0]; // @[exercise1.scala 15:18:@9.4 exercise1.scala 17:8:@11.4]
  assign x_sq = $signed(_GEN_2); // @[exercise1.scala 15:18:@9.4 exercise1.scala 17:8:@11.4]
  assign _GEN_3 = {{3{x_sq[31]}},x_sq}; // @[exercise1.scala 20:20:@15.6]
  assign _T_18 = $signed(_GEN_3) - $signed(_T_17); // @[exercise1.scala 20:20:@15.6]
  assign _T_19 = $signed(_GEN_3) - $signed(_T_17); // @[exercise1.scala 20:20:@16.6]
  assign _T_20 = $signed(_T_19); // @[exercise1.scala 20:20:@17.6]
  assign _T_22 = $signed(_T_20) + $signed(35'sh1); // @[exercise1.scala 20:33:@18.6]
  assign _T_23 = $signed(_T_20) + $signed(35'sh1); // @[exercise1.scala 20:33:@19.6]
  assign _T_24 = $signed(_T_23); // @[exercise1.scala 20:33:@20.6]
  assign _T_26 = io_select == 2'h1; // @[exercise1.scala 21:26:@24.6]
  assign _T_28 = $signed(32'sh2) * $signed(x_sq); // @[exercise1.scala 22:19:@26.8]
  assign _T_30 = $signed(32'sh6) * $signed(io_x); // @[exercise1.scala 22:32:@27.8]
  assign _GEN_4 = {{1{_T_28[34]}},_T_28}; // @[exercise1.scala 22:26:@28.8]
  assign _T_31 = $signed(_GEN_4) + $signed(_T_30); // @[exercise1.scala 22:26:@28.8]
  assign _T_32 = $signed(_GEN_4) + $signed(_T_30); // @[exercise1.scala 22:26:@29.8]
  assign _T_33 = $signed(_T_32); // @[exercise1.scala 22:26:@30.8]
  assign _T_35 = $signed(_T_33) + $signed(36'sh3); // @[exercise1.scala 22:39:@31.8]
  assign _T_36 = $signed(_T_33) + $signed(36'sh3); // @[exercise1.scala 22:39:@32.8]
  assign _T_37 = $signed(_T_36); // @[exercise1.scala 22:39:@33.8]
  assign _T_39 = $signed(32'sh4) * $signed(x_sq); // @[exercise1.scala 24:19:@37.8]
  assign _T_41 = $signed(32'sha) * $signed(io_x); // @[exercise1.scala 24:33:@38.8]
  assign _GEN_5 = {{1{_T_39[35]}},_T_39}; // @[exercise1.scala 24:26:@39.8]
  assign _T_42 = $signed(_GEN_5) - $signed(_T_41); // @[exercise1.scala 24:26:@39.8]
  assign _T_43 = $signed(_GEN_5) - $signed(_T_41); // @[exercise1.scala 24:26:@40.8]
  assign _T_44 = $signed(_T_43); // @[exercise1.scala 24:26:@41.8]
  assign _T_46 = $signed(_T_44) - $signed(37'sh5); // @[exercise1.scala 24:40:@42.8]
  assign _T_47 = $signed(_T_44) - $signed(37'sh5); // @[exercise1.scala 24:40:@43.8]
  assign _T_48 = $signed(_T_47); // @[exercise1.scala 24:40:@44.8]
  assign _GEN_0 = _T_26 ? $signed({{1{_T_37[35]}},_T_37}) : $signed(_T_48); // @[exercise1.scala 21:35:@25.6]
  assign _GEN_1 = _T_15 ? $signed({{2{_T_24[34]}},_T_24}) : $signed(_GEN_0); // @[exercise1.scala 19:28:@13.4]
  assign _GEN_6 = _GEN_1[31:0]; // @[exercise1.scala 14:20:@8.4 exercise1.scala 20:12:@21.6 exercise1.scala 22:12:@34.8 exercise1.scala 24:12:@45.8]
  assign io_fofx = $signed(_GEN_6); // @[exercise1.scala 27:11:@47.4]
endmodule