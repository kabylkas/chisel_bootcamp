;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit pass_through_generator : 
  module pass_through_generator : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<20>, out : UInt<20>}
    
    io.out <= io.in @[first_module.scala 12:10]
    
