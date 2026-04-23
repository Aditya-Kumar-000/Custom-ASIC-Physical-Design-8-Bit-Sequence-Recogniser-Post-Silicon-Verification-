// Verilog test bench for D2 chip design

`timescale 1ns/1ps

module test_TEAMG_DESIGN;

// declare DUT input signals as "reg"
// declare DUT output signals as "wire"

reg A15;
reg A16;
reg A19;
reg A20;
reg A21;
wire Q12;
wire Q13;
wire Q14;
wire Q15;
wire Q16;
wire Q17;
wire Q18;
wire Q19;
wire Q20;
integer errors_Q12;
integer errors_Q13;
integer errors_Q14;
integer errors_Q15;
integer errors_Q16;
integer errors_Q17;
integer errors_Q18;
integer errors_Q19;
integer errors_Q20;

// declare error count

integer errors;

// instance Device Under Test
//   assumes top-level OrCAD schematic is named "TEAMG_DESIGN"

`ifdef DUT
  `DUT DUT(
`else
  TEAMG_DESIGN DUT(
`endif
   .A15(A15),
   .A16(A16),
   .A19(A19),
   .A20(A20),
   .A21(A21),
   .Q12(Q12),
   .Q13(Q13),
   .Q14(Q14),
   .Q15(Q15),
   .Q16(Q16),
   .Q17(Q17),
   .Q18(Q18),
   .Q19(Q19),
   .Q20(Q20)
);

// monitor the I/O
initial
  begin
    $display( "COMPILATION OK" );
    $display( "Simulation Begins" );
    $display ( "  AAAAA  QQQQQQQQQ" );
    $display ( "  11122  111111112" );
    $display ( "  56901  234567890" );
    $display ( "                  " );
    `ifdef no_monitor
    `else
    $monitor ( "  ",
      A15,
      A16,
      A19,
      A20,
      A21,
      "  ",
      Q12,
      Q13,
      Q14,
      Q15,
      Q16,
      Q17,
      Q18,
      Q19,
      Q20,
      "  @ %d ns", $time   );
    `endif
  end

// stimulii

initial
  begin
    errors = 0;
    errors_Q12 = 0;
    errors_Q13 = 0;
    errors_Q14 = 0;
    errors_Q15 = 0;
    errors_Q16 = 0;
    errors_Q17 = 0;
    errors_Q18 = 0;
    errors_Q19 = 0;
    errors_Q20 = 0;
    $display ( "v 00000  XXXXXXXXX");
    apply_vector ( 5'b00000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 10000  XXXXXXXXX");
    apply_vector ( 5'b10000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 00000  000000000");
    apply_vector ( 5'b00000,9'b000000000,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100000001");
    apply_vector ( 5'b01100,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010000001");
    apply_vector ( 5'b01100,9'b010000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000001");
    apply_vector ( 5'b01010,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01000  XXXXXXXXX");
    apply_vector ( 5'b01000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11000  XXXXXXXXX");
    apply_vector ( 5'b11000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01000  100000001");
    apply_vector ( 5'b01000,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010000001");
    apply_vector ( 5'b01100,9'b010000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110000001");
    apply_vector ( 5'b01100,9'b110000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001000001");
    apply_vector ( 5'b01100,9'b001000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101000001");
    apply_vector ( 5'b01100,9'b101000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011000001");
    apply_vector ( 5'b01100,9'b011000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111000001");
    apply_vector ( 5'b01100,9'b111000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000100001");
    apply_vector ( 5'b01100,9'b000100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100100001");
    apply_vector ( 5'b01100,9'b100100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010100001");
    apply_vector ( 5'b01100,9'b010100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110100001");
    apply_vector ( 5'b01100,9'b110100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001100001");
    apply_vector ( 5'b01100,9'b001100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101100001");
    apply_vector ( 5'b01100,9'b101100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011100001");
    apply_vector ( 5'b01100,9'b011100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111100001");
    apply_vector ( 5'b01100,9'b111100001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000010001");
    apply_vector ( 5'b01100,9'b000010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100010001");
    apply_vector ( 5'b01100,9'b100010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010010001");
    apply_vector ( 5'b01100,9'b010010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110010001");
    apply_vector ( 5'b01100,9'b110010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001010001");
    apply_vector ( 5'b01100,9'b001010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101010001");
    apply_vector ( 5'b01100,9'b101010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011010001");
    apply_vector ( 5'b01100,9'b011010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111010001");
    apply_vector ( 5'b01100,9'b111010001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000110001");
    apply_vector ( 5'b01100,9'b000110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100110001");
    apply_vector ( 5'b01100,9'b100110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010110001");
    apply_vector ( 5'b01100,9'b010110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110110001");
    apply_vector ( 5'b01100,9'b110110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001110001");
    apply_vector ( 5'b01100,9'b001110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101110001");
    apply_vector ( 5'b01100,9'b101110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011110001");
    apply_vector ( 5'b01100,9'b011110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111110001");
    apply_vector ( 5'b01100,9'b111110001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000001001");
    apply_vector ( 5'b01100,9'b000001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100001001");
    apply_vector ( 5'b01100,9'b100001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010001001");
    apply_vector ( 5'b01100,9'b010001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110001001");
    apply_vector ( 5'b01100,9'b110001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001001001");
    apply_vector ( 5'b01100,9'b001001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101001001");
    apply_vector ( 5'b01100,9'b101001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011001001");
    apply_vector ( 5'b01100,9'b011001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111001001");
    apply_vector ( 5'b01100,9'b111001001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000101001");
    apply_vector ( 5'b01100,9'b000101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100101001");
    apply_vector ( 5'b01100,9'b100101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010101001");
    apply_vector ( 5'b01100,9'b010101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110101001");
    apply_vector ( 5'b01100,9'b110101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001101001");
    apply_vector ( 5'b01100,9'b001101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101101001");
    apply_vector ( 5'b01100,9'b101101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011101001");
    apply_vector ( 5'b01100,9'b011101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111101001");
    apply_vector ( 5'b01100,9'b111101001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000011001");
    apply_vector ( 5'b01100,9'b000011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100011001");
    apply_vector ( 5'b01100,9'b100011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010011001");
    apply_vector ( 5'b01100,9'b010011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110011001");
    apply_vector ( 5'b01100,9'b110011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001011001");
    apply_vector ( 5'b01100,9'b001011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101011001");
    apply_vector ( 5'b01100,9'b101011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011011001");
    apply_vector ( 5'b01100,9'b011011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111011001");
    apply_vector ( 5'b01100,9'b111011001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000111001");
    apply_vector ( 5'b01100,9'b000111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100111001");
    apply_vector ( 5'b01100,9'b100111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010111001");
    apply_vector ( 5'b01100,9'b010111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110111001");
    apply_vector ( 5'b01100,9'b110111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001111001");
    apply_vector ( 5'b01100,9'b001111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101111001");
    apply_vector ( 5'b01100,9'b101111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011111001");
    apply_vector ( 5'b01100,9'b011111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111111001");
    apply_vector ( 5'b01100,9'b111111001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000000101");
    apply_vector ( 5'b01100,9'b000000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100000101");
    apply_vector ( 5'b01100,9'b100000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010000101");
    apply_vector ( 5'b01100,9'b010000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110000101");
    apply_vector ( 5'b01100,9'b110000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001000101");
    apply_vector ( 5'b01100,9'b001000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101000101");
    apply_vector ( 5'b01100,9'b101000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011000101");
    apply_vector ( 5'b01100,9'b011000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111000101");
    apply_vector ( 5'b01100,9'b111000101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000100101");
    apply_vector ( 5'b01100,9'b000100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100100101");
    apply_vector ( 5'b01100,9'b100100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010100101");
    apply_vector ( 5'b01100,9'b010100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110100101");
    apply_vector ( 5'b01100,9'b110100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001100101");
    apply_vector ( 5'b01100,9'b001100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101100101");
    apply_vector ( 5'b01100,9'b101100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011100101");
    apply_vector ( 5'b01100,9'b011100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111100101");
    apply_vector ( 5'b01100,9'b111100101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000010101");
    apply_vector ( 5'b01100,9'b000010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100010101");
    apply_vector ( 5'b01100,9'b100010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010010101");
    apply_vector ( 5'b01100,9'b010010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110010101");
    apply_vector ( 5'b01100,9'b110010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001010101");
    apply_vector ( 5'b01100,9'b001010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101010101");
    apply_vector ( 5'b01100,9'b101010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011010101");
    apply_vector ( 5'b01100,9'b011010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111010101");
    apply_vector ( 5'b01100,9'b111010101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000110101");
    apply_vector ( 5'b01100,9'b000110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100110101");
    apply_vector ( 5'b01100,9'b100110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010110101");
    apply_vector ( 5'b01100,9'b010110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110110101");
    apply_vector ( 5'b01100,9'b110110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001110101");
    apply_vector ( 5'b01100,9'b001110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101110101");
    apply_vector ( 5'b01100,9'b101110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011110101");
    apply_vector ( 5'b01100,9'b011110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111110101");
    apply_vector ( 5'b01100,9'b111110101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000001101");
    apply_vector ( 5'b01100,9'b000001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100001101");
    apply_vector ( 5'b01100,9'b100001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010001101");
    apply_vector ( 5'b01100,9'b010001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110001101");
    apply_vector ( 5'b01100,9'b110001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001001101");
    apply_vector ( 5'b01100,9'b001001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101001101");
    apply_vector ( 5'b01100,9'b101001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011001101");
    apply_vector ( 5'b01100,9'b011001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111001101");
    apply_vector ( 5'b01100,9'b111001101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000101101");
    apply_vector ( 5'b01100,9'b000101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100101101");
    apply_vector ( 5'b01100,9'b100101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010101101");
    apply_vector ( 5'b01100,9'b010101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110101101");
    apply_vector ( 5'b01100,9'b110101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001101101");
    apply_vector ( 5'b01100,9'b001101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101101101");
    apply_vector ( 5'b01100,9'b101101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011101101");
    apply_vector ( 5'b01100,9'b011101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111101101");
    apply_vector ( 5'b01100,9'b111101101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000011101");
    apply_vector ( 5'b01100,9'b000011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100011101");
    apply_vector ( 5'b01100,9'b100011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010011101");
    apply_vector ( 5'b01100,9'b010011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110011101");
    apply_vector ( 5'b01100,9'b110011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001011101");
    apply_vector ( 5'b01100,9'b001011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101011101");
    apply_vector ( 5'b01100,9'b101011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011011101");
    apply_vector ( 5'b01100,9'b011011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111011101");
    apply_vector ( 5'b01100,9'b111011101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  000111101");
    apply_vector ( 5'b01100,9'b000111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100111101");
    apply_vector ( 5'b01100,9'b100111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010111101");
    apply_vector ( 5'b01100,9'b010111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  110111101");
    apply_vector ( 5'b01100,9'b110111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  001111101");
    apply_vector ( 5'b01100,9'b001111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  101111101");
    apply_vector ( 5'b01100,9'b101111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  011111101");
    apply_vector ( 5'b01100,9'b011111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111111101");
    apply_vector ( 5'b01100,9'b111111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111111101");
    apply_vector ( 5'b01100,9'b111111101,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  111111101");
    apply_vector ( 5'b01100,9'b111111101,
                   5'b11111,9'b111111111);
    $display ( "v 01000  XXXXXXXXX");
    apply_vector ( 5'b01000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11000  XXXXXXXXX");
    apply_vector ( 5'b11000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01000  111111101");
    apply_vector ( 5'b01000,9'b111111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011111101");
    apply_vector ( 5'b01010,9'b011111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101111101");
    apply_vector ( 5'b01010,9'b101111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001111101");
    apply_vector ( 5'b01010,9'b001111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110111101");
    apply_vector ( 5'b01010,9'b110111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010111101");
    apply_vector ( 5'b01010,9'b010111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100111101");
    apply_vector ( 5'b01010,9'b100111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000111101");
    apply_vector ( 5'b01010,9'b000111101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111011101");
    apply_vector ( 5'b01010,9'b111011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011011101");
    apply_vector ( 5'b01010,9'b011011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101011101");
    apply_vector ( 5'b01010,9'b101011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001011101");
    apply_vector ( 5'b01010,9'b001011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110011101");
    apply_vector ( 5'b01010,9'b110011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010011101");
    apply_vector ( 5'b01010,9'b010011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100011101");
    apply_vector ( 5'b01010,9'b100011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000011101");
    apply_vector ( 5'b01010,9'b000011101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111101101");
    apply_vector ( 5'b01010,9'b111101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011101101");
    apply_vector ( 5'b01010,9'b011101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101101101");
    apply_vector ( 5'b01010,9'b101101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001101101");
    apply_vector ( 5'b01010,9'b001101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110101101");
    apply_vector ( 5'b01010,9'b110101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010101101");
    apply_vector ( 5'b01010,9'b010101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100101101");
    apply_vector ( 5'b01010,9'b100101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000101101");
    apply_vector ( 5'b01010,9'b000101101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111001101");
    apply_vector ( 5'b01010,9'b111001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011001101");
    apply_vector ( 5'b01010,9'b011001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101001101");
    apply_vector ( 5'b01010,9'b101001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001001101");
    apply_vector ( 5'b01010,9'b001001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110001101");
    apply_vector ( 5'b01010,9'b110001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010001101");
    apply_vector ( 5'b01010,9'b010001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100001101");
    apply_vector ( 5'b01010,9'b100001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000001101");
    apply_vector ( 5'b01010,9'b000001101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111110101");
    apply_vector ( 5'b01010,9'b111110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011110101");
    apply_vector ( 5'b01010,9'b011110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101110101");
    apply_vector ( 5'b01010,9'b101110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001110101");
    apply_vector ( 5'b01010,9'b001110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110110101");
    apply_vector ( 5'b01010,9'b110110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010110101");
    apply_vector ( 5'b01010,9'b010110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100110101");
    apply_vector ( 5'b01010,9'b100110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000110101");
    apply_vector ( 5'b01010,9'b000110101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111010101");
    apply_vector ( 5'b01010,9'b111010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011010101");
    apply_vector ( 5'b01010,9'b011010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101010101");
    apply_vector ( 5'b01010,9'b101010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001010101");
    apply_vector ( 5'b01010,9'b001010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110010101");
    apply_vector ( 5'b01010,9'b110010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010010101");
    apply_vector ( 5'b01010,9'b010010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100010101");
    apply_vector ( 5'b01010,9'b100010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000010101");
    apply_vector ( 5'b01010,9'b000010101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111100101");
    apply_vector ( 5'b01010,9'b111100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011100101");
    apply_vector ( 5'b01010,9'b011100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101100101");
    apply_vector ( 5'b01010,9'b101100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001100101");
    apply_vector ( 5'b01010,9'b001100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110100101");
    apply_vector ( 5'b01010,9'b110100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010100101");
    apply_vector ( 5'b01010,9'b010100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100100101");
    apply_vector ( 5'b01010,9'b100100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000100101");
    apply_vector ( 5'b01010,9'b000100101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111000101");
    apply_vector ( 5'b01010,9'b111000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011000101");
    apply_vector ( 5'b01010,9'b011000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101000101");
    apply_vector ( 5'b01010,9'b101000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001000101");
    apply_vector ( 5'b01010,9'b001000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110000101");
    apply_vector ( 5'b01010,9'b110000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010000101");
    apply_vector ( 5'b01010,9'b010000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000101");
    apply_vector ( 5'b01010,9'b100000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000000101");
    apply_vector ( 5'b01010,9'b000000101,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111111001");
    apply_vector ( 5'b01010,9'b111111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011111001");
    apply_vector ( 5'b01010,9'b011111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101111001");
    apply_vector ( 5'b01010,9'b101111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001111001");
    apply_vector ( 5'b01010,9'b001111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110111001");
    apply_vector ( 5'b01010,9'b110111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010111001");
    apply_vector ( 5'b01010,9'b010111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100111001");
    apply_vector ( 5'b01010,9'b100111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000111001");
    apply_vector ( 5'b01010,9'b000111001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111011001");
    apply_vector ( 5'b01010,9'b111011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011011001");
    apply_vector ( 5'b01010,9'b011011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101011001");
    apply_vector ( 5'b01010,9'b101011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001011001");
    apply_vector ( 5'b01010,9'b001011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110011001");
    apply_vector ( 5'b01010,9'b110011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010011001");
    apply_vector ( 5'b01010,9'b010011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100011001");
    apply_vector ( 5'b01010,9'b100011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000011001");
    apply_vector ( 5'b01010,9'b000011001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111101001");
    apply_vector ( 5'b01010,9'b111101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011101001");
    apply_vector ( 5'b01010,9'b011101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101101001");
    apply_vector ( 5'b01010,9'b101101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001101001");
    apply_vector ( 5'b01010,9'b001101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110101001");
    apply_vector ( 5'b01010,9'b110101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010101001");
    apply_vector ( 5'b01010,9'b010101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100101001");
    apply_vector ( 5'b01010,9'b100101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000101001");
    apply_vector ( 5'b01010,9'b000101001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111001001");
    apply_vector ( 5'b01010,9'b111001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011001001");
    apply_vector ( 5'b01010,9'b011001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101001001");
    apply_vector ( 5'b01010,9'b101001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001001001");
    apply_vector ( 5'b01010,9'b001001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110001001");
    apply_vector ( 5'b01010,9'b110001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010001001");
    apply_vector ( 5'b01010,9'b010001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100001001");
    apply_vector ( 5'b01010,9'b100001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000001001");
    apply_vector ( 5'b01010,9'b000001001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111110001");
    apply_vector ( 5'b01010,9'b111110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011110001");
    apply_vector ( 5'b01010,9'b011110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101110001");
    apply_vector ( 5'b01010,9'b101110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001110001");
    apply_vector ( 5'b01010,9'b001110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110110001");
    apply_vector ( 5'b01010,9'b110110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010110001");
    apply_vector ( 5'b01010,9'b010110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100110001");
    apply_vector ( 5'b01010,9'b100110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000110001");
    apply_vector ( 5'b01010,9'b000110001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111010001");
    apply_vector ( 5'b01010,9'b111010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011010001");
    apply_vector ( 5'b01010,9'b011010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101010001");
    apply_vector ( 5'b01010,9'b101010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001010001");
    apply_vector ( 5'b01010,9'b001010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110010001");
    apply_vector ( 5'b01010,9'b110010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010010001");
    apply_vector ( 5'b01010,9'b010010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100010001");
    apply_vector ( 5'b01010,9'b100010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000010001");
    apply_vector ( 5'b01010,9'b000010001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111100001");
    apply_vector ( 5'b01010,9'b111100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011100001");
    apply_vector ( 5'b01010,9'b011100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101100001");
    apply_vector ( 5'b01010,9'b101100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001100001");
    apply_vector ( 5'b01010,9'b001100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110100001");
    apply_vector ( 5'b01010,9'b110100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010100001");
    apply_vector ( 5'b01010,9'b010100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100100001");
    apply_vector ( 5'b01010,9'b100100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000100001");
    apply_vector ( 5'b01010,9'b000100001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111000001");
    apply_vector ( 5'b01010,9'b111000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011000001");
    apply_vector ( 5'b01010,9'b011000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101000001");
    apply_vector ( 5'b01010,9'b101000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001000001");
    apply_vector ( 5'b01010,9'b001000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110000001");
    apply_vector ( 5'b01010,9'b110000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010000001");
    apply_vector ( 5'b01010,9'b010000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000001");
    apply_vector ( 5'b01010,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000000000");
    apply_vector ( 5'b01010,9'b000000000,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111111111");
    apply_vector ( 5'b01010,9'b111111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011111111");
    apply_vector ( 5'b01010,9'b011111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101111111");
    apply_vector ( 5'b01010,9'b101111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001111111");
    apply_vector ( 5'b01010,9'b001111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110111111");
    apply_vector ( 5'b01010,9'b110111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010111111");
    apply_vector ( 5'b01010,9'b010111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100111111");
    apply_vector ( 5'b01010,9'b100111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000111111");
    apply_vector ( 5'b01010,9'b000111111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111011111");
    apply_vector ( 5'b01010,9'b111011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011011111");
    apply_vector ( 5'b01010,9'b011011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101011111");
    apply_vector ( 5'b01010,9'b101011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001011111");
    apply_vector ( 5'b01010,9'b001011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110011111");
    apply_vector ( 5'b01010,9'b110011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010011111");
    apply_vector ( 5'b01010,9'b010011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100011111");
    apply_vector ( 5'b01010,9'b100011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000011111");
    apply_vector ( 5'b01010,9'b000011111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111101111");
    apply_vector ( 5'b01010,9'b111101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011101111");
    apply_vector ( 5'b01010,9'b011101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101101111");
    apply_vector ( 5'b01010,9'b101101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001101111");
    apply_vector ( 5'b01010,9'b001101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110101111");
    apply_vector ( 5'b01010,9'b110101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010101111");
    apply_vector ( 5'b01010,9'b010101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100101111");
    apply_vector ( 5'b01010,9'b100101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000101111");
    apply_vector ( 5'b01010,9'b000101111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111001111");
    apply_vector ( 5'b01010,9'b111001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011001111");
    apply_vector ( 5'b01010,9'b011001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101001111");
    apply_vector ( 5'b01010,9'b101001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001001111");
    apply_vector ( 5'b01010,9'b001001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110001111");
    apply_vector ( 5'b01010,9'b110001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010001111");
    apply_vector ( 5'b01010,9'b010001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100001111");
    apply_vector ( 5'b01010,9'b100001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000001111");
    apply_vector ( 5'b01010,9'b000001111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111110111");
    apply_vector ( 5'b01010,9'b111110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011110111");
    apply_vector ( 5'b01010,9'b011110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101110111");
    apply_vector ( 5'b01010,9'b101110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001110111");
    apply_vector ( 5'b01010,9'b001110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110110111");
    apply_vector ( 5'b01010,9'b110110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010110111");
    apply_vector ( 5'b01010,9'b010110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100110111");
    apply_vector ( 5'b01010,9'b100110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000110111");
    apply_vector ( 5'b01010,9'b000110111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111010111");
    apply_vector ( 5'b01010,9'b111010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011010111");
    apply_vector ( 5'b01010,9'b011010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101010111");
    apply_vector ( 5'b01010,9'b101010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001010111");
    apply_vector ( 5'b01010,9'b001010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110010111");
    apply_vector ( 5'b01010,9'b110010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010010111");
    apply_vector ( 5'b01010,9'b010010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100010111");
    apply_vector ( 5'b01010,9'b100010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000010111");
    apply_vector ( 5'b01010,9'b000010111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111100111");
    apply_vector ( 5'b01010,9'b111100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011100111");
    apply_vector ( 5'b01010,9'b011100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101100111");
    apply_vector ( 5'b01010,9'b101100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001100111");
    apply_vector ( 5'b01010,9'b001100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110100111");
    apply_vector ( 5'b01010,9'b110100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010100111");
    apply_vector ( 5'b01010,9'b010100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100100111");
    apply_vector ( 5'b01010,9'b100100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000100111");
    apply_vector ( 5'b01010,9'b000100111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111000111");
    apply_vector ( 5'b01010,9'b111000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011000111");
    apply_vector ( 5'b01010,9'b011000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101000111");
    apply_vector ( 5'b01010,9'b101000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001000111");
    apply_vector ( 5'b01010,9'b001000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110000111");
    apply_vector ( 5'b01010,9'b110000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010000111");
    apply_vector ( 5'b01010,9'b010000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000111");
    apply_vector ( 5'b01010,9'b100000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000000111");
    apply_vector ( 5'b01010,9'b000000111,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111111011");
    apply_vector ( 5'b01010,9'b111111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011111011");
    apply_vector ( 5'b01010,9'b011111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101111011");
    apply_vector ( 5'b01010,9'b101111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001111011");
    apply_vector ( 5'b01010,9'b001111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110111011");
    apply_vector ( 5'b01010,9'b110111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010111011");
    apply_vector ( 5'b01010,9'b010111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100111011");
    apply_vector ( 5'b01010,9'b100111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000111011");
    apply_vector ( 5'b01010,9'b000111011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111011011");
    apply_vector ( 5'b01010,9'b111011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011011011");
    apply_vector ( 5'b01010,9'b011011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101011011");
    apply_vector ( 5'b01010,9'b101011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001011011");
    apply_vector ( 5'b01010,9'b001011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110011011");
    apply_vector ( 5'b01010,9'b110011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010011011");
    apply_vector ( 5'b01010,9'b010011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100011011");
    apply_vector ( 5'b01010,9'b100011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000011011");
    apply_vector ( 5'b01010,9'b000011011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111101011");
    apply_vector ( 5'b01010,9'b111101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011101011");
    apply_vector ( 5'b01010,9'b011101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101101011");
    apply_vector ( 5'b01010,9'b101101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001101011");
    apply_vector ( 5'b01010,9'b001101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110101011");
    apply_vector ( 5'b01010,9'b110101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010101011");
    apply_vector ( 5'b01010,9'b010101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100101011");
    apply_vector ( 5'b01010,9'b100101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000101011");
    apply_vector ( 5'b01010,9'b000101011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111001011");
    apply_vector ( 5'b01010,9'b111001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011001011");
    apply_vector ( 5'b01010,9'b011001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101001011");
    apply_vector ( 5'b01010,9'b101001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001001011");
    apply_vector ( 5'b01010,9'b001001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110001011");
    apply_vector ( 5'b01010,9'b110001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010001011");
    apply_vector ( 5'b01010,9'b010001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100001011");
    apply_vector ( 5'b01010,9'b100001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000001011");
    apply_vector ( 5'b01010,9'b000001011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111110011");
    apply_vector ( 5'b01010,9'b111110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011110011");
    apply_vector ( 5'b01010,9'b011110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101110011");
    apply_vector ( 5'b01010,9'b101110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001110011");
    apply_vector ( 5'b01010,9'b001110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110110011");
    apply_vector ( 5'b01010,9'b110110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010110011");
    apply_vector ( 5'b01010,9'b010110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100110011");
    apply_vector ( 5'b01010,9'b100110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000110011");
    apply_vector ( 5'b01010,9'b000110011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111010011");
    apply_vector ( 5'b01010,9'b111010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011010011");
    apply_vector ( 5'b01010,9'b011010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101010011");
    apply_vector ( 5'b01010,9'b101010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001010011");
    apply_vector ( 5'b01010,9'b001010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110010011");
    apply_vector ( 5'b01010,9'b110010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010010011");
    apply_vector ( 5'b01010,9'b010010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100010011");
    apply_vector ( 5'b01010,9'b100010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000010011");
    apply_vector ( 5'b01010,9'b000010011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111100011");
    apply_vector ( 5'b01010,9'b111100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011100011");
    apply_vector ( 5'b01010,9'b011100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101100011");
    apply_vector ( 5'b01010,9'b101100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001100011");
    apply_vector ( 5'b01010,9'b001100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110100011");
    apply_vector ( 5'b01010,9'b110100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010100011");
    apply_vector ( 5'b01010,9'b010100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100100011");
    apply_vector ( 5'b01010,9'b100100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  000100011");
    apply_vector ( 5'b01010,9'b000100011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  111000011");
    apply_vector ( 5'b01010,9'b111000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  011000011");
    apply_vector ( 5'b01010,9'b011000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  101000011");
    apply_vector ( 5'b01010,9'b101000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  001000011");
    apply_vector ( 5'b01010,9'b001000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  110000011");
    apply_vector ( 5'b01010,9'b110000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  010000011");
    apply_vector ( 5'b01010,9'b010000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 01010  XXXXXXXXX");
    apply_vector ( 5'b01010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11010  XXXXXXXXX");
    apply_vector ( 5'b11010,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01010  100000011");
    apply_vector ( 5'b01010,9'b100000011,
                   5'b11111,9'b111111111);
    $display ( "v 00000  XXXXXXXXX");
    apply_vector ( 5'b00000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 10000  XXXXXXXXX");
    apply_vector ( 5'b10000,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 00000  000000000");
    apply_vector ( 5'b00000,9'b000000000,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  100000001");
    apply_vector ( 5'b01100,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01100  XXXXXXXXX");
    apply_vector ( 5'b01100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11100  XXXXXXXXX");
    apply_vector ( 5'b11100,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01100  010000001");
    apply_vector ( 5'b01100,9'b010000001,
                   5'b11111,9'b111111111);
    $display ( "v 01101  XXXXXXXXX");
    apply_vector ( 5'b01101,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11101  XXXXXXXXX");
    apply_vector ( 5'b11101,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01101  100000001");
    apply_vector ( 5'b01101,9'b100000001,
                   5'b11111,9'b111111111);
    $display ( "v 01011  XXXXXXXXX");
    apply_vector ( 5'b01011,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11011  XXXXXXXXX");
    apply_vector ( 5'b11011,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01011  111111111");
    apply_vector ( 5'b01011,9'b111111111,
                   5'b11111,9'b111111111);
    $display ( "v 01111  XXXXXXXXX");
    apply_vector ( 5'b01111,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 11111  XXXXXXXXX");
    apply_vector ( 5'b11111,9'bXXXXXXXXX,
                   5'b11111,9'b000000000);
    $display ( "v 01111  000000000");
    apply_vector ( 5'b01111,9'b000000000,
                   5'b11111,9'b111111111);
    if ( errors == 0 )
      begin
        $display( "SIMULATION OK" );
        $display( "All vectors passed" );
      end
    else
      begin
        $display( "" );
        $display( "SIMULATION Failed" );
        $display( "" );
        if (  errors_Q12 > 0 )
          $display ( "       ", errors_Q12, " errors with Q12",) ;
        if (  errors_Q13 > 0 )
          $display ( "       ", errors_Q13, " errors with Q13",) ;
        if (  errors_Q14 > 0 )
          $display ( "       ", errors_Q14, " errors with Q14",) ;
        if (  errors_Q15 > 0 )
          $display ( "       ", errors_Q15, " errors with Q15",) ;
        if (  errors_Q16 > 0 )
          $display ( "       ", errors_Q16, " errors with Q16",) ;
        if (  errors_Q17 > 0 )
          $display ( "       ", errors_Q17, " errors with Q17",) ;
        if (  errors_Q18 > 0 )
          $display ( "       ", errors_Q18, " errors with Q18",) ;
        if (  errors_Q19 > 0 )
          $display ( "       ", errors_Q19, " errors with Q19",) ;
        if (  errors_Q20 > 0 )
          $display ( "       ", errors_Q20, " errors with Q20",) ;
        $display( "" );
        $display( "Total: ", errors, " errors");
        $display( "" );
      end
    $stop;
    $finish;
  end

// function declaration

task apply_vector;

  input [4:0] stimulus_vector;
  input [8:0] expected_vector;
  input [4:0] stimulus_mask;
  input [8:0] expected_mask;

  begin
    `ifdef set_x_to_0
      {A15,A16,A19,A20,A21} = stimulus_vector & stimulus_mask ;
    `else
      {A15,A16,A19,A20,A21} = stimulus_vector;
    `endif
    #500
    check_vector( expected_vector, expected_mask );
    #500
    $display("");
  end

endtask
task check_vector;

  input [8:0] expected_vector;
  input [8:0] mask_vector;

  reg [8:0] received_vector;
  reg [8:0] difference_vector;

  integer local_errors;

  begin
    local_errors = 0;
    received_vector = {Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20};
    difference_vector = ( received_vector ^ expected_vector ) & mask_vector ;
    $display( "r        %b", received_vector );
    $display( "         %s", error_point( difference_vector ) );
    if ( expected_vector[8] !== 1'bX )
      if ( expected_vector[8] !== Q12)
        begin
          $display( "error with Q12 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q12 = errors_Q12 + 1;
        end
    if ( expected_vector[7] !== 1'bX )
      if ( expected_vector[7] !== Q13)
        begin
          $display( "error with Q13 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q13 = errors_Q13 + 1;
        end
    if ( expected_vector[6] !== 1'bX )
      if ( expected_vector[6] !== Q14)
        begin
          $display( "error with Q14 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q14 = errors_Q14 + 1;
        end
    if ( expected_vector[5] !== 1'bX )
      if ( expected_vector[5] !== Q15)
        begin
          $display( "error with Q15 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q15 = errors_Q15 + 1;
        end
    if ( expected_vector[4] !== 1'bX )
      if ( expected_vector[4] !== Q16)
        begin
          $display( "error with Q16 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q16 = errors_Q16 + 1;
        end
    if ( expected_vector[3] !== 1'bX )
      if ( expected_vector[3] !== Q17)
        begin
          $display( "error with Q17 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q17 = errors_Q17 + 1;
        end
    if ( expected_vector[2] !== 1'bX )
      if ( expected_vector[2] !== Q18)
        begin
          $display( "error with Q18 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q18 = errors_Q18 + 1;
        end
    if ( expected_vector[1] !== 1'bX )
      if ( expected_vector[1] !== Q19)
        begin
          $display( "error with Q19 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q19 = errors_Q19 + 1;
        end
    if ( expected_vector[0] !== 1'bX )
      if ( expected_vector[0] !== Q20)
        begin
          $display( "error with Q20 @ %d ns", $time );
          local_errors = local_errors + 1;
          errors_Q20 = errors_Q20 + 1;
        end
    if ( local_errors > 0 ) $display( "" );
    errors = errors + local_errors;
  end

endtask
function [71:0] error_point;

  input [8:0] in_vector;
  integer i, j;
  begin
    error_point[ 7 : 0 ] = ( in_vector[ 0 ] === 0 ) ? " " : "^";
    error_point[ 15 : 8 ] = ( in_vector[ 1 ] === 0 ) ? " " : "^";
    error_point[ 23 : 16 ] = ( in_vector[ 2 ] === 0 ) ? " " : "^";
    error_point[ 31 : 24 ] = ( in_vector[ 3 ] === 0 ) ? " " : "^";
    error_point[ 39 : 32 ] = ( in_vector[ 4 ] === 0 ) ? " " : "^";
    error_point[ 47 : 40 ] = ( in_vector[ 5 ] === 0 ) ? " " : "^";
    error_point[ 55 : 48 ] = ( in_vector[ 6 ] === 0 ) ? " " : "^";
    error_point[ 63 : 56 ] = ( in_vector[ 7 ] === 0 ) ? " " : "^";
    error_point[ 71 : 64 ] = ( in_vector[ 8 ] === 0 ) ? " " : "^";
  end

endfunction


endmodule

