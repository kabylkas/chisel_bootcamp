;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit pass_through : 
  module pass_through : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<4>}
    
    io.out <= io.in @[first_module.scala 12:10]
    
