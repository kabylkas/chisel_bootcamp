module Adder( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_in_a, // @[:@6.4]
  input  [3:0] io_in_b, // @[:@6.4]
  output [3:0] io_out // @[:@6.4]
);
  wire [4:0] _T_11; // @[exercise3.scala 13:23:@8.4]
  assign _T_11 = io_in_a + io_in_b; // @[exercise3.scala 13:23:@8.4]
  assign io_out = io_in_a + io_in_b; // @[exercise3.scala 13:12:@10.4]
endmodule
