package first_module

import chisel3._
import chisel3.util._
import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class pass_through_generator(width: Int) extends Module {
  val io = IO(new Bundle{
    val in  = Input(UInt(width.W))
    val out = Output(UInt(width.W))
  })
  io.out := io.in
}

object first_module extends App {
  println("Generating verilog")
  chisel3.Driver.execute(Array("--target-dir", "generated-verilog"), () => new pass_through_generator(20))
}
