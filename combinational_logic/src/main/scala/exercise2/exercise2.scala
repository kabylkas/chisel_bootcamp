import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class Arbiter extends Module {
  val io = IO(new Bundle {
    //FIFo
    val fifo_valid = Input(Bool())
    val fifo_ready = Output(Bool())
    val fifo_data  = Input(UInt(16.W))

    //PE0
    val pe0_valid = Output(Bool())
    val pe0_ready = Input(Bool())
    val pe0_data  = Output(UInt(16.W))

    //PE1
    val pe1_valid = Output(Bool())
    val pe1_ready = Input(Bool())
    val pe1_data  = Output(UInt(16.W))
  })

  io.pe0_data := io.fifo_data
  io.pe1_data := io.fifo_data
  io.fifo_ready := io.pe0_ready | io.pe1_ready

  when (io.fifo_valid) {
    when (io.pe0_ready) {
      io.pe0_valid := 1.U
      io.pe1_valid := 0.U
    } .elsewhen (io.pe1_ready) {
      io.pe0_valid := 0.U
      io.pe1_valid := 1.U
    } .otherwise {
      io.pe0_valid := 0.U
      io.pe1_valid := 0.U
    }
  } .otherwise {
      io.pe0_valid := 0.U
      io.pe1_valid := 0.U
  }
}

class Arbiter_tester(c: Arbiter) extends PeekPokeTester(c) {
  import scala.util.Random
  val data = Random.nextInt(65536)
  poke(c.io.fifo_data, data)
  
  for (i <- 0 until 8) {
    poke(c.io.fifo_valid, (i>>0)%2)
    poke(c.io.pe0_ready,  (i>>1)%2)
    poke(c.io.pe1_ready,  (i>>2)%2)

    expect(c.io.fifo_ready, i>1)
    expect(c.io.pe0_valid,  i==3 || i==7)
    expect(c.io.pe1_valid,  i==5)
    
    if (i == 3 || i ==7) {
      expect(c.io.pe0_data, data)
    } else if (i == 5) {
      expect(c.io.pe1_data, data)
    }
  }
}

object exercise2 extends App {
  chisel3.Driver.execute(Array("--target-dir", "generated"), () => new Arbiter())

  val test = Driver(() => new Arbiter) {
    c => new Arbiter_tester(c)
  }

  assert(test)
  println("\033[0;31mSUCCESS!\033[0m")
}
