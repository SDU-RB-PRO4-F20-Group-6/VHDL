// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  6 22:16:19 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_pwm_control_0_0/design_1_pwm_control_0_0_stub.v
// Design      : design_1_pwm_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_control,Vivado 2019.2" *)
module design_1_pwm_control_0_0(clk_in, pwm_trigger, enable, reset, pwm_signal)
/* synthesis syn_black_box black_box_pad_pin="clk_in,pwm_trigger[8:0],enable,reset,pwm_signal" */;
  input clk_in;
  input [8:0]pwm_trigger;
  input enable;
  input reset;
  output pwm_signal;
endmodule
