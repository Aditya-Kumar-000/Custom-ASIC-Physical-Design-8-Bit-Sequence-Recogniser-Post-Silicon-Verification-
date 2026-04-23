`timescale 1ns/1ps

module test_TEAMG_COUNTER_DIRECTOR;
  reg CLK;
  reg nRST;
  reg UPIN;
  reg DOWNIN;
  reg ACKIN;

  wire Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7;
  wire REQ;
  wire [7:0] q_bus = {Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0};

  integer errors;
  integer expected_count;
  integer i;
  reg [7:0] expected_q;

  TEAMG_8UPDOWN dut (
    .ACKIN(ACKIN),
    .CLK(CLK),
    .DOWNIN(DOWNIN),
    .nRST(nRST),
    .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3),
    .Q4(Q4), .Q5(Q5), .Q6(Q6), .Q7(Q7),
    .REQ(REQ),
    .UPIN(UPIN)
  );

  initial begin
    CLK = 1'b0;
    forever #50 CLK = ~CLK;
  end

  task automatic check_state;
    input [255:0] label;
    begin
      expected_q = expected_count[7:0];
      if (q_bus !== expected_q) begin
        $display("FAIL %-30s expected_count=%0d expected_q=%b got_q=%b @%0t", label, expected_count, expected_q, q_bus, $time);
        errors = errors + 1;
      end
      if (REQ !== (expected_count != 0)) begin
        $display("FAIL %-30s expected_req=%0d got_req=%0d @%0t", label, (expected_count != 0), REQ, $time);
        errors = errors + 1;
      end
    end
  endtask

  task automatic model_step;
    input ack_i;
    input up_i;
    input down_i;
    begin
      if (!nRST) begin
        expected_count = 0;
      end else if (ack_i) begin
        if (up_i && !down_i) expected_count = 1;
        else if (down_i && !up_i) expected_count = -1;
        else expected_count = 0;
      end else begin
        if (up_i && !down_i) begin
          if (expected_count < 127) expected_count = expected_count + 1;
        end else if (down_i && !up_i) begin
          if (expected_count > -127) expected_count = expected_count - 1;
        end
      end
    end
  endtask

  task automatic drive_and_step;
    input ack_i;
    input up_i;
    input down_i;
    input [255:0] label;
    begin
      @(negedge CLK);
      ACKIN = ack_i;
      UPIN = up_i;
      DOWNIN = down_i;
      @(posedge CLK);
      #20;
      model_step(ack_i, up_i, down_i);
      check_state(label);
    end
  endtask

  initial begin
    $dumpfile("counter_director.vcd");
    $dumpvars(0, test_TEAMG_COUNTER_DIRECTOR);

    errors = 0;
    expected_count = 0;
    nRST = 1'b0;
    ACKIN = 1'b0;
    UPIN = 1'b0;
    DOWNIN = 1'b0;

    // Power-on reset and reset release
    #20;
    check_state("power_on_reset");
    @(posedge CLK); #20;
    check_state("reset_held");
    nRST = 1'b1;

    // Up counting and upper saturation
    for (i = 0; i < 140; i = i + 1)
      drive_and_step(1'b0, 1'b1, 1'b0, "count_up_to_saturation");

    // Down counting and lower saturation
    for (i = 0; i < 280; i = i + 1)
      drive_and_step(1'b0, 1'b0, 1'b1, "count_down_to_saturation");

    // Disabled hold
    for (i = 0; i < 5; i = i + 1)
      drive_and_step(1'b0, 1'b0, 1'b0, "hold_when_disabled");

    // Direction switching and rapid toggling
    drive_and_step(1'b0, 1'b1, 1'b0, "switch_down_to_up");
    drive_and_step(1'b0, 1'b0, 1'b1, "switch_up_to_down");
    for (i = 0; i < 20; i = i + 1)
      drive_and_step(1'b0, i[0], ~i[0], "rapid_toggle");

    // ACKIN path behavior
    drive_and_step(1'b1, 1'b1, 1'b0, "ack_plus_up_sets_plus_one");
    drive_and_step(1'b1, 1'b0, 1'b1, "ack_plus_down_sets_minus_one");
    drive_and_step(1'b1, 1'b1, 1'b1, "ack_plus_both_sets_zero");

    // Repeated resets
    nRST = 1'b0; #20; expected_count = 0; check_state("repeat_reset_1");
    nRST = 1'b1;
    drive_and_step(1'b0, 1'b1, 1'b0, "post_repeat_reset_increment");
    nRST = 1'b0; #20; expected_count = 0; check_state("repeat_reset_2");
    nRST = 1'b1;

    // Reset during counting and near edge
    @(negedge CLK);
    ACKIN = 1'b0; UPIN = 1'b1; DOWNIN = 1'b0;
    #4 nRST = 1'b0;
    #20;
    expected_count = 0;
    check_state("reset_near_rising_edge");
    nRST = 1'b1;
    @(posedge CLK); #20;
    model_step(1'b0, 1'b1, 1'b0);
    check_state("release_after_near_edge_reset");

    // Enable glitch style toggles between edges
    @(negedge CLK);
    UPIN = 1'b1; DOWNIN = 1'b0; ACKIN = 1'b0;
    #2 UPIN = 1'b0;
    #2 UPIN = 1'b1;
    @(posedge CLK); #20;
    model_step(1'b0, 1'b1, 1'b0);
    check_state("enable_glitch_stress");

    // X/Z propagation checks
    @(negedge CLK);
    UPIN = 1'bx; DOWNIN = 1'b0; ACKIN = 1'b0;
    @(posedge CLK); #20;
    if ((^q_bus !== 1'bx) && (^q_bus !== 1'bz)) begin
      $display("FAIL x_propagation_expected_unknown q=%b @%0t", q_bus, $time);
      errors = errors + 1;
    end

    nRST = 1'b0; #20; expected_count = 0; check_state("recover_from_x_with_reset");
    nRST = 1'b1;

    @(negedge CLK);
    UPIN = 1'b0; DOWNIN = 1'bz; ACKIN = 1'b0;
    @(posedge CLK); #20;
    if ((^q_bus !== 1'bx) && (^q_bus !== 1'bz)) begin
      $display("FAIL z_propagation_expected_unknown q=%b @%0t", q_bus, $time);
      errors = errors + 1;
    end

    nRST = 1'b0; #20; expected_count = 0; check_state("recover_from_z_with_reset");
    nRST = 1'b1;

    // Long random stress
    for (i = 0; i < 300; i = i + 1) begin
      drive_and_step($urandom_range(0,1), $urandom_range(0,1), $urandom_range(0,1), "long_random_stress");
    end

    if (errors == 0) begin
      $display("DIRECTOR_COUNTER_REGRESSION: PASS");
    end else begin
      $display("DIRECTOR_COUNTER_REGRESSION: FAIL (errors=%0d)", errors);
    end

    $finish;
  end

endmodule
