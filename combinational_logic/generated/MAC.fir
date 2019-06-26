;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit MAC : 
  module MAC : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in_a : UInt<4>, flip in_b : UInt<4>, flip in_c : UInt<4>, out : UInt<8>}
    
    node _T_13 = mul(io.in_a, io.in_b) @[combinational_logic.scala 15:22]
    node _T_14 = add(_T_13, io.in_c) @[combinational_logic.scala 15:33]
    node _T_15 = tail(_T_14, 1) @[combinational_logic.scala 15:33]
    io.out <= _T_15 @[combinational_logic.scala 15:10]
    
