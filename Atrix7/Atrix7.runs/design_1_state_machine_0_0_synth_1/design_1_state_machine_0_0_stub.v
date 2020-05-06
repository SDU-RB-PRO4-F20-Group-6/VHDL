// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  6 22:56:38 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_state_machine_0_0_stub.v
// Design      : design_1_state_machine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "state_machine,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_in, frame_choice, motor_choice, 
  request_type, parity_check, motor_ctrl_A, motor_ctrl_B, quad_enc_A, quad_enc_B, index_ctrl_A, 
  index_ctrl_B, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,frame_choice,motor_choice,request_type,parity_check,motor_ctrl_A,motor_ctrl_B,quad_enc_A[14:0],quad_enc_B[14:0],index_ctrl_A,index_ctrl_B,data_out[14:0]" */;
  input clk_in;
  input frame_choice;
  input motor_choice;
  input request_type;
  input parity_check;
  output motor_ctrl_A;
  output motor_ctrl_B;
  input [14:0]quad_enc_A;
  input [14:0]quad_enc_B;
  input index_ctrl_A;
  input index_ctrl_B;
  output [14:0]data_out;
endmodule
