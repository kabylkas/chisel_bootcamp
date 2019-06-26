import chisel3._

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

class Adder_tester(c: Adder, saturate: Boolean) extends PeekPokeTester(c) {

}
