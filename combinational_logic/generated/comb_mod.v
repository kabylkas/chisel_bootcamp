module comb_mod( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_in, // @[:@6.4]
  output [3:0] io_out // @[:@6.4]
);
  assign io_out = io_in; // @[combinational_logic.scala 17:10:@10.4]
endmodule
