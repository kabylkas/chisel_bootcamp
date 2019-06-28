package exercise1

import chisel3._
import chisel3.util._
import chisel3.iotesters.{Driver, PeekPokeTester}

class PolyCircuit extends Module {
  val io = IO(new Bundle {
    val select = Input(UInt(2.W))
    val x = Input(SInt(32.W))
    val fofx = Output(SInt(32.W))
  })

  val result = Wire(SInt(32.W))
  val x_sq = Wire(SInt(32.W))

  x_sq := io.x * io.x

  when (io.select === 0.U) {
    result := x_sq - 2.S * io.x + 1.S
  } .elsewhen (io.select === 1.U) {
    result := 2.S * x_sq + 6.S * io.x + 3.S
  } .otherwise {
    result := 4.S * x_sq - 10.S * io.x - 5.S
  }

  io.fofx := result
}

object exercise1 extends App {
  chisel3.Driver.execute(Array("--target-dir", "generated"), () => new PolyCircuit())
}
