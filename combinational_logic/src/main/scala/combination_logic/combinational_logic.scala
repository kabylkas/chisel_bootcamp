package combinational_logic

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class MAC extends Module {
  val io = IO(new Bundle {
    val in_a = Input(UInt(4.W))
    val in_b = Input(UInt(4.W))
    val in_c = Input(UInt(4.W))
    val out  = Output(UInt(8.W))
  })
  
  io.out := (io.in_a * io.in_b) + io.in_c
}

class MAC_tester(dut: MAC) extends PeekPokeTester(dut) {
  val cycles = 100
  import scala.util.Random
  for (i <- 0 until cycles) {
    val in_a = Random.nextInt(16)
    val in_b = Random.nextInt(16)
    val in_c = Random.nextInt(16)
    val result = ((in_a * in_b) + in_c)

    //test
    poke(dut.io.in_a, in_a)
    poke(dut.io.in_b, in_b)
    poke(dut.io.in_c, in_c)
    expect(dut.io.out, result)
  }
}

object combinational_logic extends App {
  chisel3.Driver.execute(Array("--target-dir", "generated"), () => new MAC())

  val test = Driver(() => new MAC()) {
    c => new MAC_tester(c)
  }

  assert(test)
  println("SUCCESS!")
}

