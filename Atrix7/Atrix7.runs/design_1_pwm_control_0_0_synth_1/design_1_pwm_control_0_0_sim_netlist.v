// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  6 22:16:19 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pwm_control_0_0_sim_netlist.v
// Design      : design_1_pwm_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pwm_control_0_0,pwm_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm_control,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    pwm_trigger,
    enable,
    reset,
    pwm_signal);
  input clk_in;
  input [8:0]pwm_trigger;
  input enable;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output pwm_signal;

  wire clk_in;
  wire enable;
  wire pwm_signal;
  wire [8:0]pwm_trigger;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_control U0
       (.clk_in(clk_in),
        .enable(enable),
        .pwm_signal(pwm_signal),
        .pwm_trigger(pwm_trigger),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_control
   (pwm_signal,
    reset,
    enable,
    pwm_trigger,
    clk_in);
  output pwm_signal;
  input reset;
  input enable;
  input [8:0]pwm_trigger;
  input clk_in;

  wire \clk_counter[8]_i_2_n_0 ;
  wire [8:0]clk_counter_reg;
  wire clk_in;
  wire enable;
  wire p_0_in;
  wire [8:0]p_0_in__0;
  wire pwm_signal;
  wire pwm_signal0_carry_i_1__0_n_0;
  wire pwm_signal0_carry_i_1_n_0;
  wire pwm_signal0_carry_i_2__0_n_0;
  wire pwm_signal0_carry_i_2_n_0;
  wire pwm_signal0_carry_i_3_n_0;
  wire pwm_signal0_carry_i_4_n_0;
  wire pwm_signal0_carry_i_5_n_0;
  wire pwm_signal0_carry_i_6_n_0;
  wire pwm_signal0_carry_i_7_n_0;
  wire pwm_signal0_carry_i_8_n_0;
  wire pwm_signal0_carry_n_0;
  wire pwm_signal0_carry_n_1;
  wire pwm_signal0_carry_n_2;
  wire pwm_signal0_carry_n_3;
  wire pwm_signal_i_1_n_0;
  wire [8:0]pwm_trigger;
  wire reset;
  wire [8:0]trigger_buffer;
  wire [3:0]NLW_pwm_signal0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm_signal0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_signal0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[1]_i_1 
       (.I0(clk_counter_reg[0]),
        .I1(clk_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_counter[2]_i_1 
       (.I0(clk_counter_reg[0]),
        .I1(clk_counter_reg[1]),
        .I2(clk_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_counter[3]_i_1 
       (.I0(clk_counter_reg[1]),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[2]),
        .I3(clk_counter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_counter[4]_i_1 
       (.I0(clk_counter_reg[2]),
        .I1(clk_counter_reg[0]),
        .I2(clk_counter_reg[1]),
        .I3(clk_counter_reg[3]),
        .I4(clk_counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_counter[5]_i_1 
       (.I0(clk_counter_reg[3]),
        .I1(clk_counter_reg[1]),
        .I2(clk_counter_reg[0]),
        .I3(clk_counter_reg[2]),
        .I4(clk_counter_reg[4]),
        .I5(clk_counter_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[6]_i_1 
       (.I0(\clk_counter[8]_i_2_n_0 ),
        .I1(clk_counter_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_counter[7]_i_1 
       (.I0(\clk_counter[8]_i_2_n_0 ),
        .I1(clk_counter_reg[6]),
        .I2(clk_counter_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_counter[8]_i_1 
       (.I0(clk_counter_reg[6]),
        .I1(\clk_counter[8]_i_2_n_0 ),
        .I2(clk_counter_reg[7]),
        .I3(clk_counter_reg[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_counter[8]_i_2 
       (.I0(clk_counter_reg[5]),
        .I1(clk_counter_reg[3]),
        .I2(clk_counter_reg[1]),
        .I3(clk_counter_reg[0]),
        .I4(clk_counter_reg[2]),
        .I5(clk_counter_reg[4]),
        .O(\clk_counter[8]_i_2_n_0 ));
  FDRE \clk_counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(clk_counter_reg[0]),
        .R(1'b0));
  FDRE \clk_counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(clk_counter_reg[1]),
        .R(1'b0));
  FDRE \clk_counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(clk_counter_reg[2]),
        .R(1'b0));
  FDRE \clk_counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(clk_counter_reg[3]),
        .R(1'b0));
  FDRE \clk_counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(clk_counter_reg[4]),
        .R(1'b0));
  FDRE \clk_counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(clk_counter_reg[5]),
        .R(1'b0));
  FDRE \clk_counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(clk_counter_reg[6]),
        .R(1'b0));
  FDRE \clk_counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(clk_counter_reg[7]),
        .R(1'b0));
  FDRE \clk_counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(clk_counter_reg[8]),
        .R(1'b0));
  CARRY4 pwm_signal0_carry
       (.CI(1'b0),
        .CO({pwm_signal0_carry_n_0,pwm_signal0_carry_n_1,pwm_signal0_carry_n_2,pwm_signal0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_signal0_carry_i_1_n_0,pwm_signal0_carry_i_2_n_0,pwm_signal0_carry_i_3_n_0,pwm_signal0_carry_i_4_n_0}),
        .O(NLW_pwm_signal0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_signal0_carry_i_5_n_0,pwm_signal0_carry_i_6_n_0,pwm_signal0_carry_i_7_n_0,pwm_signal0_carry_i_8_n_0}));
  CARRY4 pwm_signal0_carry__0
       (.CI(pwm_signal0_carry_n_0),
        .CO({NLW_pwm_signal0_carry__0_CO_UNCONNECTED[3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pwm_signal0_carry_i_1__0_n_0}),
        .O(NLW_pwm_signal0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pwm_signal0_carry_i_2__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_signal0_carry_i_1
       (.I0(clk_counter_reg[6]),
        .I1(trigger_buffer[6]),
        .I2(trigger_buffer[7]),
        .I3(clk_counter_reg[7]),
        .O(pwm_signal0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_signal0_carry_i_1__0
       (.I0(clk_counter_reg[8]),
        .I1(trigger_buffer[8]),
        .O(pwm_signal0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_signal0_carry_i_2
       (.I0(clk_counter_reg[4]),
        .I1(trigger_buffer[4]),
        .I2(trigger_buffer[5]),
        .I3(clk_counter_reg[5]),
        .O(pwm_signal0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    pwm_signal0_carry_i_2__0
       (.I0(trigger_buffer[8]),
        .I1(clk_counter_reg[8]),
        .O(pwm_signal0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_signal0_carry_i_3
       (.I0(clk_counter_reg[2]),
        .I1(trigger_buffer[2]),
        .I2(trigger_buffer[3]),
        .I3(clk_counter_reg[3]),
        .O(pwm_signal0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_signal0_carry_i_4
       (.I0(clk_counter_reg[0]),
        .I1(trigger_buffer[0]),
        .I2(trigger_buffer[1]),
        .I3(clk_counter_reg[1]),
        .O(pwm_signal0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_signal0_carry_i_5
       (.I0(clk_counter_reg[6]),
        .I1(trigger_buffer[6]),
        .I2(clk_counter_reg[7]),
        .I3(trigger_buffer[7]),
        .O(pwm_signal0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_signal0_carry_i_6
       (.I0(clk_counter_reg[4]),
        .I1(trigger_buffer[4]),
        .I2(clk_counter_reg[5]),
        .I3(trigger_buffer[5]),
        .O(pwm_signal0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_signal0_carry_i_7
       (.I0(clk_counter_reg[2]),
        .I1(trigger_buffer[2]),
        .I2(clk_counter_reg[3]),
        .I3(trigger_buffer[3]),
        .O(pwm_signal0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_signal0_carry_i_8
       (.I0(clk_counter_reg[0]),
        .I1(trigger_buffer[0]),
        .I2(clk_counter_reg[1]),
        .I3(trigger_buffer[1]),
        .O(pwm_signal0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_signal_i_1
       (.I0(p_0_in),
        .O(pwm_signal_i_1_n_0));
  FDRE pwm_signal_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(pwm_signal_i_1_n_0),
        .Q(pwm_signal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[0] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[0]),
        .Q(trigger_buffer[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[1] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[1]),
        .Q(trigger_buffer[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[2] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[2]),
        .Q(trigger_buffer[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[3] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[3]),
        .Q(trigger_buffer[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[4] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[4]),
        .Q(trigger_buffer[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[5] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[5]),
        .Q(trigger_buffer[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[6] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[6]),
        .Q(trigger_buffer[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[7] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[7]),
        .Q(trigger_buffer[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \trigger_buffer_reg[8] 
       (.C(clk_in),
        .CE(enable),
        .D(pwm_trigger[8]),
        .Q(trigger_buffer[8]),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
