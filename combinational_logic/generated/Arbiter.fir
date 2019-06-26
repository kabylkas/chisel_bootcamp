;buildInfoPackage: chisel3, version: 3.1.7, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-03-20 22:15:13.399, builtAtMillis: 1553120113399
circuit Arbiter : 
  module Arbiter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip fifo_valid : UInt<1>, fifo_ready : UInt<1>, flip fifo_data : UInt<16>, pe0_valid : UInt<1>, flip pe0_ready : UInt<1>, pe0_data : UInt<16>, pe1_valid : UInt<1>, flip pe1_ready : UInt<1>, pe1_data : UInt<16>}
    
    io.pe0_data <= io.fifo_data @[exercise2.scala 23:15]
    io.pe1_data <= io.fifo_data @[exercise2.scala 24:15]
    node _T_23 = or(io.pe0_ready, io.pe1_ready) @[exercise2.scala 25:33]
    io.fifo_ready <= _T_23 @[exercise2.scala 25:17]
    when io.fifo_valid : @[exercise2.scala 27:24]
      when io.pe0_ready : @[exercise2.scala 28:25]
        io.pe0_valid <= UInt<1>("h01") @[exercise2.scala 29:20]
        io.pe1_valid <= UInt<1>("h00") @[exercise2.scala 30:20]
        skip @[exercise2.scala 28:25]
      else : @[exercise2.scala 31:32]
        when io.pe1_ready : @[exercise2.scala 31:32]
          io.pe0_valid <= UInt<1>("h00") @[exercise2.scala 32:20]
          io.pe1_valid <= UInt<1>("h01") @[exercise2.scala 33:20]
          skip @[exercise2.scala 31:32]
        else : @[exercise2.scala 34:18]
          io.pe0_valid <= UInt<1>("h00") @[exercise2.scala 35:20]
          io.pe1_valid <= UInt<1>("h00") @[exercise2.scala 36:20]
          skip @[exercise2.scala 34:18]
      skip @[exercise2.scala 27:24]
    else : @[exercise2.scala 38:16]
      io.pe0_valid <= UInt<1>("h00") @[exercise2.scala 39:20]
      io.pe1_valid <= UInt<1>("h00") @[exercise2.scala 40:20]
      skip @[exercise2.scala 38:16]
    
