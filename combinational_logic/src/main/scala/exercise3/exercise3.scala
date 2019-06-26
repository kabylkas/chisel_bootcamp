import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class Adder(saturate: Boolean) extends Module {
  val io = IO(new Bundle {
    val in_a = Input(UInt(4.W))
    val in_b = Input(UInt(4.W))
    val out  = Output(UInt(4.W))
  })

  if (saturate) {
    io.out := io.in_a + io.in_b
  } else {
    io.out := io.in_a +& io.in_b
  }
}

class AdderTester(c: Adder, saturate: Boolean) extends PeekPokeTester(c) {
  // 100 random tests
  val cycles = 100
  import scala.util.Random
  import scala.math.min
  for (i <- 0 until cycles) {
    val in_a = Random.nextInt(16)
    val in_b = Random.nextInt(16)
    poke(c.io.in_a, in_a)
    poke(c.io.in_b, in_b)
    if (saturate) {
      expect(c.io.out, min(in_a+in_b, 15))
    } else {
      expect(c.io.out, (in_a+in_b)%16)
    }
  }
  
  // ensure we test saturation vs. truncation
  poke(c.io.in_a, 15)
  poke(c.io.in_b, 15)
  if (saturate) {
    expect(c.io.out, 15)
  } else {
    expect(c.io.out, 14)
  }
}

object exercise3 extends App {
  chisel3.Driver.execute(Array("--target-dir", "generated"), () => new Adder(false))
}
