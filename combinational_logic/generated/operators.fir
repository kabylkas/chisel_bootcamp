;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit operators : 
  module operators : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out_add : UInt<4>, out_sub : UInt<4>, out_mul : UInt<4>}
    
    node _T_15 = add(UInt<1>("h01"), UInt<3>("h04")) @[combinational_logic.scala 14:21]
    node _T_16 = tail(_T_15, 1) @[combinational_logic.scala 14:21]
    io.out_add <= _T_16 @[combinational_logic.scala 14:14]
    node _T_19 = sub(UInt<3>("h07"), UInt<2>("h02")) @[combinational_logic.scala 15:21]
    node _T_20 = asUInt(_T_19) @[combinational_logic.scala 15:21]
    node _T_21 = tail(_T_20, 1) @[combinational_logic.scala 15:21]
    io.out_sub <= _T_21 @[combinational_logic.scala 15:14]
    node _T_24 = mul(UInt<2>("h02"), UInt<2>("h03")) @[combinational_logic.scala 16:21]
    io.out_mul <= _T_24 @[combinational_logic.scala 16:14]
    
