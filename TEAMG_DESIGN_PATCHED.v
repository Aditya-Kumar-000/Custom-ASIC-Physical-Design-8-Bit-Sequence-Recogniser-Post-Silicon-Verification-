// Verilog netlist created by S-Edit 2021.2.0
// Written on Thu Apr 23 17:37:30 2026

// Library:               TEAMG_Schematics3
// Cell:                  TEAMG_DESIGNFINAL
// View name:             schematic
// Design path:           I:\D2_Schematics\TEAMG_Schematics3
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module Design_Globals(
);
wire Vdd;
endmodule // Design_Globals

module TEAMG_RINGOSCILLATOR(
	EnableOsc,
	nResetOsc,
	OscOut
);
input EnableOsc;
input nResetOsc;
output OscOut;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_29;
wire N_30;
wire OscPreDiv;

DFFR DFFR_1(
	.Clk(OscPreDiv),
	.D(N_23),
	.nQ(N_23),
	.nRst(N_30),
	.Q(N_2)
);
DFFR DFFR_2(
	.Clk(N_23),
	.D(N_24),
	.nQ(N_24),
	.nRst(N_30),
	.Q(N_4)
);
DFFR DFFR_3(
	.Clk(N_24),
	.D(N_25),
	.nQ(N_25),
	.nRst(N_30),
	.Q(N_6)
);
DFFR DFFR_4(
	.Clk(N_25),
	.D(N_26),
	.nQ(N_26),
	.nRst(N_30),
	.Q(N_8)
);
DFFR DFFR_5(
	.Clk(N_26),
	.D(N_27),
	.nQ(N_27),
	.nRst(N_30),
	.Q(N_10)
);
DFFR DFFR_6(
	.Clk(N_27),
	.D(N_28),
	.nQ(N_28),
	.nRst(N_30),
	.Q(N_12)
);
DFFR DFFR_7(
	.Clk(N_28),
	.D(N_29),
	.nQ(N_29),
	.nRst(N_30),
	.Q(N_14)
);
DFFR DFFR_8(
	.Clk(N_29),
	.D(N_21),
	.nQ(N_21),
	.nRst(N_30),
	.Q(N_16)
);
DFFR DFFR_9(
	.Clk(N_30),
	.D(N_22),
	.nQ(N_22),
	.nRst(nResetOsc),
	.Q(OscOut)
);
INV1 INV1_1(
	.A(N_20),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_1),
	.Q(N_3)
);
INV1 INV1_3(
	.A(N_3),
	.Q(N_5)
);
INV1 INV1_4(
	.A(N_15),
	.Q(N_7)
);
INV1 INV1_5(
	.A(N_5),
	.Q(N_9)
);
INV1 INV1_6(
	.A(N_9),
	.Q(N_11)
);
INV1 INV1_7(
	.A(N_11),
	.Q(N_13)
);
INV1 INV1_8(
	.A(N_13),
	.Q(N_15)
);
INV1 INV1_9(
	.A(N_7),
	.Q(N_17)
);
INV1 INV1_10(
	.A(N_17),
	.Q(N_18)
);
INV1 INV1_11(
	.A(N_18),
	.Q(OscPreDiv)
);
INV1 INV1_12(
	.A(N_19),
	.Q(N_20)
);
NAND2 NAND2_1(
	.A(EnableOsc),
	.B(OscPreDiv),
	.Q(N_19)
);
NAND4 NAND4_1(
	.A(N_24),
	.B(N_27),
	.C(N_28),
	.D(N_29),
	.Q(N_30)
);
endmodule // TEAMG_RINGOSCILLATOR


module TEAMG_HALFADDER(
	A,
	B,
	Carry,
	SUM
);
input A;
input B;
output Carry;
output SUM;

NAND2 NAND2_1(
	.A(A),
	.B(B),
	.Q(Carry)
);
XOR2 XOR2_1(
	.A(A),
	.B(B),
	.Q(SUM)
);
endmodule // TEAMG_HALFADDER


module TEAMG_FULLADDER(
	A,
	B,
	C,
	Carry,
	S
);
input A;
input B;
input C;
output Carry;
output S;

wire N_1;
wire N_2;
wire N_3;

NAND2 NAND2_1(
	.A(N_2),
	.B(N_3),
	.Q(Carry)
);
TEAMG_HALFADDER TEAMG_HALFADDER_1(
	.A(A),
	.B(B),
	.Carry(N_2),
	.SUM(N_1)
);
TEAMG_HALFADDER TEAMG_HALFADDER_2(
	.A(N_1),
	.B(C),
	.Carry(N_3),
	.SUM(S)
);
endmodule // TEAMG_FULLADDER


module TEAMG_8ADDER(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A7,
	B0,
	B1,
	B2,
	B3,
	B4,
	B5,
	B6,
	B7,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A7;
input B0;
input B1;
input B2;
input B3;
input B4;
input B5;
input B6;
input B7;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;

TEAMG_FULLADDER TEAMG_FULLADDER_1(
	.A(A0),
	.B(B0),
	.C(N_1),
	.Carry(N_2),
	.S(Q0)
);
TEAMG_FULLADDER TEAMG_FULLADDER_2(
	.A(A1),
	.B(B1),
	.C(N_2),
	.Carry(N_3),
	.S(Q1)
);
TEAMG_FULLADDER TEAMG_FULLADDER_3(
	.A(A2),
	.B(B2),
	.C(N_3),
	.Carry(N_4),
	.S(Q2)
);
TEAMG_FULLADDER TEAMG_FULLADDER_4(
	.A(A3),
	.B(B3),
	.C(N_4),
	.Carry(N_5),
	.S(Q3)
);
TEAMG_FULLADDER TEAMG_FULLADDER_5(
	.A(A4),
	.B(B4),
	.C(N_5),
	.Carry(N_6),
	.S(Q4)
);
TEAMG_FULLADDER TEAMG_FULLADDER_6(
	.A(A5),
	.B(B5),
	.C(N_6),
	.Carry(N_7),
	.S(Q5)
);
TEAMG_FULLADDER TEAMG_FULLADDER_7(
	.A(A6),
	.B(B6),
	.C(N_7),
	.Carry(N_8),
	.S(Q6)
);
TEAMG_FULLADDER TEAMG_FULLADDER_8(
	.A(A7),
	.B(B7),
	.C(N_8),
	.Carry(N_9),
	.S(Q7)
);
TIE0 TIE0_1(
	.Q(N_1)
);
endmodule // TEAMG_8ADDER


module TEAMG_8UPDOWN(
	ACKIN,
	CLK,
	DOWNIN,
	nRST,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	REQ,
	UPIN
);
input ACKIN;
input CLK;
input DOWNIN;
input nRST;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output REQ;
input UPIN;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;
wire N_27;
wire N_28;
wire N_29;
wire N_30;
wire N_31;
wire N_32;
wire N_33;
wire N_34;
wire N_35;
wire N_36;
wire N_37;
wire N_38;
wire N_39;
wire N_40;
wire N_41;
wire N_42;
wire N_43;
wire N_44;
wire N_45;
wire N_46;
wire N_47;
wire N_48;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_4),
	.nQ(N_31),
	.nRst(nRST),
	.Q(Q0)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_7),
	.nQ(N_32),
	.nRst(nRST),
	.Q(Q1)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_10),
	.nQ(N_33),
	.nRst(nRST),
	.Q(Q2)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(N_13),
	.nQ(N_34),
	.nRst(nRST),
	.Q(Q3)
);
DFFR DFFR_5(
	.Clk(CLK),
	.D(N_15),
	.nQ(N_35),
	.nRst(nRST),
	.Q(Q4)
);
DFFR DFFR_6(
	.Clk(CLK),
	.D(N_17),
	.nQ(N_36),
	.nRst(nRST),
	.Q(Q5)
);
DFFR DFFR_7(
	.Clk(CLK),
	.D(N_18),
	.nQ(N_37),
	.nRst(nRST),
	.Q(Q6)
);
DFFR DFFR_8(
	.Clk(CLK),
	.D(N_19),
	.nQ(N_38),
	.nRst(nRST),
	.Q(Q7)
);
INV1 INV1_1(
	.A(UPIN),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_14),
	.Q(N_5)
);
INV1 INV1_3(
	.A(DOWNIN),
	.Q(N_8)
);
INV1 INV1_4(
	.A(Q0),
	.Q(N_11)
);
INV1 INV1_5(
	.A(N_26),
	.Q(N_47)
);
INV1 INV1_6(
	.A(UPIN),
	.Q(N_16)
);
INV1 INV1_7(
	.A(N_2),
	.Q(N_39)
);
INV1 INV1_13(
	.A(Q7),
	.Q(N_25)
);
INV1 INV1_14(
	.A(Q7),
	.Q(N_28)
);
MUX2 MUX2_1(
	.A(N_40),
	.B(N_3),
	.Q(N_4),
	.S(ACKIN)
);
MUX2 MUX2_2(
	.A(N_41),
	.B(N_6),
	.Q(N_7),
	.S(ACKIN)
);
MUX2 MUX2_3(
	.A(N_42),
	.B(N_6),
	.Q(N_10),
	.S(ACKIN)
);
MUX2 MUX2_4(
	.A(N_43),
	.B(N_6),
	.Q(N_13),
	.S(ACKIN)
);
MUX2 MUX2_5(
	.A(N_44),
	.B(N_6),
	.Q(N_15),
	.S(ACKIN)
);
MUX2 MUX2_6(
	.A(N_45),
	.B(N_6),
	.Q(N_17),
	.S(ACKIN)
);
MUX2 MUX2_7(
	.A(N_46),
	.B(N_6),
	.Q(N_18),
	.S(ACKIN)
);
MUX2 MUX2_8(
	.A(N_48),
	.B(N_6),
	.Q(N_19),
	.S(ACKIN)
);
NAND2 NAND2_1(
	.A(N_20),
	.B(N_23),
	.Q(REQ)
);
NAND2 NAND2_3(
	.A(N_21),
	.B(N_30),
	.Q(N_26)
);
NAND2 NAND2_5(
	.A(N_22),
	.B(N_24),
	.Q(N_30)
);
NAND4 NAND4_3(
	.A(Q3),
	.B(Q2),
	.C(Q1),
	.D(Q0),
	.Q(N_27)
);
NAND4 NAND4_4(
	.A(N_28),
	.B(Q6),
	.C(Q5),
	.D(Q4),
	.Q(N_29)
);
NOR2 NOR2_1(
	.A(N_47),
	.B(N_12),
	.Q(N_2)
);
NOR2 NOR2_2(
	.A(DOWNIN),
	.B(N_16),
	.Q(N_6)
);
NOR2 NOR2_3(
	.A(N_29),
	.B(N_27),
	.Q(N_9)
);
NOR2 NOR2_4(
	.A(N_5),
	.B(N_9),
	.Q(N_12)
);
NOR2 NOR2_5(
	.A(N_1),
	.B(DOWNIN),
	.Q(N_14)
);
NOR2 NOR2_6(
	.A(UPIN),
	.B(N_8),
	.Q(N_21)
);
NOR4 NOR4_1(
	.A(Q0),
	.B(Q1),
	.C(Q2),
	.D(Q3),
	.Q(N_20)
);
NOR4 NOR4_2(
	.A(Q4),
	.B(Q5),
	.C(Q6),
	.D(Q7),
	.Q(N_23)
);
NOR4 NOR4_3(
	.A(Q3),
	.B(Q2),
	.C(Q1),
	.D(N_11),
	.Q(N_24)
);
NOR4 NOR4_4(
	.A(N_25),
	.B(Q6),
	.C(Q5),
	.D(Q4),
	.Q(N_22)
);
TEAMG_8ADDER TEAMG_8ADDER_1(
	.A0(Q0),
	.A1(Q1),
	.A2(Q2),
	.A3(Q3),
	.A4(Q4),
	.A5(Q5),
	.A6(Q6),
	.A7(Q7),
	.B0(N_39),
	.B1(N_47),
	.B2(N_47),
	.B3(N_47),
	.B4(N_47),
	.B5(N_47),
	.B6(N_47),
	.B7(N_47),
	.Q0(N_40),
	.Q1(N_41),
	.Q2(N_42),
	.Q3(N_43),
	.Q4(N_44),
	.Q5(N_45),
	.Q6(N_46),
	.Q7(N_48)
);
XOR2 XOR2_1(
	.A(DOWNIN),
	.B(UPIN),
	.Q(N_3)
);
endmodule // TEAMG_8UPDOWN


module PrintVoltage(
	Vprint
);
inout Vprint;
parameter Enabled="Enabled";
endmodule // PrintVoltage


module TEAMG_MOTIONDETECTOR(
	A,
	B,
	Clock,
	Down,
	Reset,
	Up
);
input A;
input B;
input Clock;
output Down;
input Reset;
output Up;

wire A_Prev;
wire A_Sync;
wire B_Prev;
wire B_Sync;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;

DFFR DFFR_1(
	.Clk(Clock),
	.D(A),
	.nQ(N_8),
	.nRst(Reset),
	.Q(A_Sync)
);
DFFR DFFR_2(
	.Clk(Clock),
	.D(B),
	.nQ(N_9),
	.nRst(Reset),
	.Q(B_Sync)
);
DFFR DFFR_3(
	.Clk(Clock),
	.D(A_Sync),
	.nQ(N_10),
	.nRst(Reset),
	.Q(A_Prev)
);
DFFR DFFR_4(
	.Clk(Clock),
	.D(B_Sync),
	.nQ(N_11),
	.nRst(Reset),
	.Q(B_Prev)
);
DFFR DFFR_5(
	.Clk(Clock),
	.D(Design_Globals.Vdd),
	.nQ(N_12),
	.nRst(Reset),
	.Q(N_1)
);
DFFR DFFR_6(
	.Clk(Clock),
	.D(N_1),
	.nQ(N_13),
	.nRst(Reset),
	.Q(N_4)
);
INV1 INV1_1(
	.A(N_6),
	.Q(Up)
);
INV1 INV1_2(
	.A(N_7),
	.Q(Down)
);
NAND3 NAND3_1(
	.A(N_2),
	.B(N_3),
	.C(N_4),
	.Q(N_6)
);
NAND3 NAND3_2(
	.A(N_4),
	.B(N_3),
	.C(N_5),
	.Q(N_7)
);
PrintVoltage PV4(
	.Vprint(B_Prev)
);
PrintVoltage PV5(
	.Vprint(A_Sync)
);
PrintVoltage PV6(
	.Vprint(A_Prev)
);
PrintVoltage PV7(
	.Vprint(B_Sync)
);
PrintVoltage PV8(
	.Vprint(Up)
);
PrintVoltage PV9(
	.Vprint(Down)
);
XOR2 XOR2_1(
	.A(A_Sync),
	.B(B_Prev),
	.Q(N_2)
);
XOR2 XOR2_2(
	.A(B_Sync),
	.B(A_Prev),
	.Q(N_5)
);
XOR2 XOR2_3(
	.A(N_2),
	.B(N_5),
	.Q(N_3)
);
endmodule // TEAMG_MOTIONDETECTOR


module TEAMG_4BITADDER(
	CarryIn,
	CarryOut,
	Overflow,
	X0,
	X1,
	X2,
	X3,
	XY0,
	XY1,
	XY2,
	XY3,
	Y0,
	Y1,
	Y2,
	Y3,
	Zero
);
input CarryIn;
output CarryOut;
output Overflow;
input X0;
input X1;
input X2;
input X3;
output XY0;
output XY1;
output XY2;
output XY3;
input Y0;
input Y1;
input Y2;
input Y3;
output Zero;

wire C0;
wire C1;
wire C2;

NOR4 NOR4_1(
	.A(XY3),
	.B(XY2),
	.C(XY1),
	.D(XY0),
	.Q(Zero)
);
TEAMG_FULLADDER TEAMG_FULLADDER_1(
	.A(X0),
	.B(Y0),
	.C(CarryIn),
	.Carry(C0),
	.S(XY0)
);
TEAMG_FULLADDER TEAMG_FULLADDER_2(
	.A(X1),
	.B(Y1),
	.C(C0),
	.Carry(C1),
	.S(XY1)
);
TEAMG_FULLADDER TEAMG_FULLADDER_3(
	.A(X2),
	.B(Y2),
	.C(C1),
	.Carry(C2),
	.S(XY2)
);
TEAMG_FULLADDER TEAMG_FULLADDER_4(
	.A(X3),
	.B(Y3),
	.C(C2),
	.Carry(CarryOut),
	.S(XY3)
);
XOR2 XOR2_1(
	.A(C2),
	.B(CarryOut),
	.Q(Overflow)
);
endmodule // TEAMG_4BITADDER


module TEAMG_TYPE2(
	Clock,
	d,
	dinv,
	nQ2,
	nQ2inv,
	q0,
	q0inv,
	q1,
	q1inv,
	q2,
	q2inv,
	Reset
);
input Clock;
input d;
input dinv;
output nQ2;
output nQ2inv;
input q0;
input q0inv;
input q1;
input q1inv;
input q2;
input q2inv;
input Reset;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;

DFFR DFFR_1(
	.Clk(Clock),
	.D(N_2),
	.nQ(nQ2inv),
	.nRst(Reset),
	.Q(nQ2)
);
NAND3 NAND3_1(
	.A(q2),
	.B(q1inv),
	.C(d),
	.Q(N_1)
);
NAND3 NAND3_2(
	.A(d),
	.B(q0),
	.C(q2),
	.Q(N_3)
);
NAND4 NAND4_1(
	.A(N_5),
	.B(N_1),
	.C(N_4),
	.D(N_3),
	.Q(N_2)
);
NAND4 NAND4_2(
	.A(q2),
	.B(q1),
	.C(dinv),
	.D(q0inv),
	.Q(N_4)
);
NAND4 NAND4_3(
	.A(q2inv),
	.B(q1),
	.C(q0),
	.D(dinv),
	.Q(N_5)
);
endmodule // TEAMG_TYPE2


module TEAMG_TYPE1(
	Clock,
	d,
	dinv,
	nQ1,
	nQ1inv,
	q0,
	q0inv,
	q1,
	q1inv,
	q2,
	q2inv,
	Reset
);
input Clock;
input d;
input dinv;
output nQ1;
output nQ1inv;
input q0;
input q0inv;
input q1;
input q1inv;
input q2;
input q2inv;
input Reset;

wire N_1;
wire N_2;
wire N_3;
wire N_4;

DFFR DFFR_1(
	.Clk(Clock),
	.D(N_1),
	.nQ(nQ1inv),
	.nRst(Reset),
	.Q(nQ1)
);
NAND3 NAND3_1(
	.A(N_4),
	.B(N_2),
	.C(N_3),
	.Q(N_1)
);
NAND3 NAND3_2(
	.A(q1inv),
	.B(q0),
	.C(d),
	.Q(N_3)
);
NAND4 NAND4_1(
	.A(dinv),
	.B(q0inv),
	.C(q1),
	.D(q2),
	.Q(N_2)
);
NAND4 NAND4_2(
	.A(q2inv),
	.B(q1),
	.C(q0inv),
	.D(d),
	.Q(N_4)
);
endmodule // TEAMG_TYPE1


module TEAMG_TYPE0(
	Clock,
	dinv,
	nQ0,
	nQ0inv,
	q0,
	q0inv,
	q1,
	q1inv,
	q2,
	q2inv,
	Reset
);
input Clock;
input dinv;
output nQ0;
output nQ0inv;
input q0;
input q0inv;
input q1;
input q1inv;
input q2;
input q2inv;
input Reset;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;

DFFR DFFR_1(
	.Clk(Clock),
	.D(N_8),
	.nQ(nQ0inv),
	.nRst(Reset),
	.Q(nQ0)
);
NAND2 NAND2_1(
	.A(N_3),
	.B(N_3),
	.Q(N_1)
);
NAND2 NAND2_2(
	.A(dinv),
	.B(q1inv),
	.Q(N_4)
);
NAND2 NAND2_3(
	.A(q0inv),
	.B(dinv),
	.Q(N_6)
);
NAND2 NAND2_4(
	.A(N_1),
	.B(N_6),
	.Q(N_8)
);
NAND3 NAND3_1(
	.A(q2inv),
	.B(q1),
	.C(q0inv),
	.Q(N_2)
);
NAND3 NAND3_2(
	.A(q2),
	.B(q1inv),
	.C(q0inv),
	.Q(N_5)
);
NAND3 NAND3_3(
	.A(q2),
	.B(q1),
	.C(q0),
	.Q(N_7)
);
NAND4 NAND4_1(
	.A(N_2),
	.B(N_5),
	.C(N_7),
	.D(N_4),
	.Q(N_3)
);
endmodule // TEAMG_TYPE0


module TEAMG_MATCHALL(
	Clock,
	d,
	MatchAll,
	q0,
	q1,
	q2,
	Reset
);
input Clock;
input d;
output MatchAll;
input q0;
input q1;
input q2;
input Reset;

wire N_1;
wire N_2;
wire N_3;

DFFR DFFR_1(
	.Clk(Clock),
	.D(N_1),
	.nQ(N_3),
	.nRst(Reset),
	.Q(MatchAll)
);
NAND2 NAND2_1(
	.A(N_2),
	.B(N_2),
	.Q(N_1)
);
NAND4 NAND4_1(
	.A(d),
	.B(q0),
	.C(q1),
	.D(q2),
	.Q(N_2)
);
endmodule // TEAMG_MATCHALL


module TEAMG_SEQ(
	ClockSeq,
	DataIn,
	MatchAll,
	nResetSeq
);
input ClockSeq;
input DataIn;
output MatchAll;
input nResetSeq;

wire DataInvert;
wire q0;
wire q0inv;
wire q1;
wire q1inv;
wire q2;
wire q2inv;

INV1 INV1_1(
	.A(DataIn),
	.Q(DataInvert)
);
TEAMG_MATCHALL TEAMG_MATCHALL_1(
	.Clock(ClockSeq),
	.d(DataIn),
	.MatchAll(MatchAll),
	.q0(q0),
	.q1(q1),
	.q2(q2),
	.Reset(nResetSeq)
);
TEAMG_TYPE0 TEAMG_TYPE0_1(
	.Clock(ClockSeq),
	.dinv(DataInvert),
	.nQ0(q0),
	.nQ0inv(q0inv),
	.q0(q0),
	.q0inv(q0inv),
	.q1(q1),
	.q1inv(q1inv),
	.q2(q2),
	.q2inv(q2inv),
	.Reset(nResetSeq)
);
TEAMG_TYPE1 TEAMG_TYPE1_1(
	.Clock(ClockSeq),
	.d(DataIn),
	.dinv(DataInvert),
	.nQ1(q1),
	.nQ1inv(q1inv),
	.q0(q0),
	.q0inv(q0inv),
	.q1(q1),
	.q1inv(q1inv),
	.q2(q2),
	.q2inv(q2inv),
	.Reset(nResetSeq)
);
TEAMG_TYPE2 TEAMG_TYPE2_1(
	.Clock(ClockSeq),
	.d(DataIn),
	.dinv(DataInvert),
	.nQ2(q2),
	.nQ2inv(q2inv),
	.q0(q0),
	.q0inv(q0inv),
	.q1(q1),
	.q1inv(q1inv),
	.q2(q2),
	.q2inv(q2inv),
	.Reset(nResetSeq)
);
endmodule // TEAMG_SEQ


module TEAMG_DESIGN(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A7,
	A8,
	A9,
	A10,
	A11,
	A12,
	A13,
	A14,
	A15,
	A16,
	A17,
	A18,
	A19,
	A20,
	A21,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	Q8,
	Q9,
	Q10,
	Q11,
	Q12,
	Q13,
	Q14,
	Q15,
	Q16,
	Q17,
	Q18,
	Q19,
	Q20
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A7;
input A8;
input A9;
input A10;
input A11;
input A12;
input A13;
input A14;
input A15;
input A16;
input A17;
input A18;
input A19;
input A20;
input A21;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output Q8;
output Q9;
output Q10;
output Q11;
output Q12;
output Q13;
output Q14;
output Q15;
output Q16;
output Q17;
output Q18;
output Q19;
output Q20;

INV1 INV1_1(
	.A(A0),
	.Q(Q0)
);
TEAMG_4BITADDER TEAMG_4BITADDER_1(
	.CarryIn(A6),
	.CarryOut(Q7),
	.Overflow(Q8),
	.X0(A7),
	.X1(A8),
	.X2(A9),
	.X3(A10),
	.XY0(Q3),
	.XY1(Q4),
	.XY2(Q5),
	.XY3(Q6),
	.Y0(A11),
	.Y1(A12),
	.Y2(A13),
	.Y3(A14),
	.Zero(Q9)
);
TEAMG_8UPDOWN TEAMG_8UPDOWN_1(
	.ACKIN(A21),
	.CLK(A15),
	.DOWNIN(A20),
	.nRST(A16),
	.Q0(Q12),
	.Q1(Q13),
	.Q2(Q14),
	.Q3(Q15),
	.Q4(Q16),
	.Q5(Q17),
	.Q6(Q18),
	.Q7(Q19),
	.REQ(Q20),
	.UPIN(A19)
);
TEAMG_MOTIONDETECTOR TEAMG_MOTIONDETECTOR_1(
	.A(A17),
	.B(A18),
	.Clock(A15),
	.Down(Q10),
	.Reset(A16),
	.Up(Q11)
);
TEAMG_RINGOSCILLATOR TEAMG_RINGOSCILLATOR_1(
	.EnableOsc(A2),
	.nResetOsc(A1),
	.OscOut(Q1)
);
TEAMG_SEQ TEAMG_SEQ_1(
	.ClockSeq(A3),
	.DataIn(A5),
	.MatchAll(Q2),
	.nResetSeq(A4)
);
endmodule // TEAMG_DESIGNFINAL

