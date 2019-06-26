module pass_through_generator( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [19:0] io_in, // @[:@6.4]
  output [19:0] io_out // @[:@6.4]
);
  assign io_out = io_in; // @[first_module.scala 12:10:@8.4]
endmodule
