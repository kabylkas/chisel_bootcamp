;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit comb_mod : 
  module comb_mod : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<4>}
    
    node _T_11 = add(UInt<1>("h01"), UInt<1>("h01")) @[combinational_logic.scala 14:18]
    node utwo = tail(_T_11, 1) @[combinational_logic.scala 14:18]
    io.out <= io.in @[combinational_logic.scala 17:10]
    
