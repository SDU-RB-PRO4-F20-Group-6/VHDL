// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Apr 17 00:15:01 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/claus/source/semesterprojekt/VHDL/claus_playground/claus_playground.srcs/sources_1/bd/design_1/ip/design_1_state_machine_0_0/design_1_state_machine_0_0_sim_netlist.v
// Design      : design_1_state_machine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_state_machine_0_0,state_machine,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "state_machine,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_state_machine_0_0
   (clk_in,
    frame_choice,
    motor_choice,
    request_type,
    motor_ctrl_A,
    motor_ctrl_B,
    quad_enc_A,
    quad_enc_B,
    index_ctrl_A,
    index_ctrl_B,
    data_out);
  input clk_in;
  input frame_choice;
  input motor_choice;
  input request_type;
  output motor_ctrl_A;
  output motor_ctrl_B;
  input [14:0]quad_enc_A;
  input [14:0]quad_enc_B;
  input index_ctrl_A;
  input index_ctrl_B;
  output [14:0]data_out;

  wire clk_in;
  wire [14:0]data_out;
  wire frame_choice;
  wire index_ctrl_A;
  wire index_ctrl_B;
  wire motor_choice;
  wire motor_ctrl_A;
  wire motor_ctrl_B;
  wire [14:0]quad_enc_A;
  wire [14:0]quad_enc_B;
  wire request_type;

  design_1_state_machine_0_0_state_machine U0
       (.D({frame_choice,motor_choice,request_type}),
        .clk_in(clk_in),
        .data_out(data_out),
        .index_ctrl_A(index_ctrl_A),
        .index_ctrl_B(index_ctrl_B),
        .motor_ctrl_A(motor_ctrl_A),
        .motor_ctrl_B(motor_ctrl_B),
        .quad_enc_A(quad_enc_A),
        .quad_enc_B(quad_enc_B));
endmodule

(* ORIG_REF_NAME = "state_machine" *) 
module design_1_state_machine_0_0_state_machine
   (motor_ctrl_A,
    motor_ctrl_B,
    data_out,
    D,
    clk_in,
    quad_enc_B,
    quad_enc_A,
    index_ctrl_B,
    index_ctrl_A);
  output motor_ctrl_A;
  output motor_ctrl_B;
  output [14:0]data_out;
  input [2:0]D;
  input clk_in;
  input [14:0]quad_enc_B;
  input [14:0]quad_enc_A;
  input index_ctrl_B;
  input index_ctrl_A;

  wire [2:0]D;
  wire clk_in;
  wire [14:0]data_out;
  wire \data_out[14]_i_1_n_0 ;
  wire [14:0]data_out_0;
  wire [2:0]frame;
  wire index_ctrl_A;
  wire index_ctrl_B;
  wire motor_ctrl_A;
  wire motor_ctrl_A_i_1_n_0;
  wire motor_ctrl_B;
  wire motor_ctrl_B_i_1_n_0;
  wire [14:0]quad_enc_A;
  wire [14:0]quad_enc_B;

  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[0]_i_1 
       (.I0(quad_enc_B[0]),
        .I1(frame[1]),
        .I2(quad_enc_A[0]),
        .I3(frame[0]),
        .O(data_out_0[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[10]_i_1 
       (.I0(quad_enc_B[10]),
        .I1(frame[1]),
        .I2(quad_enc_A[10]),
        .I3(frame[0]),
        .O(data_out_0[10]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[11]_i_1 
       (.I0(quad_enc_B[11]),
        .I1(frame[1]),
        .I2(quad_enc_A[11]),
        .I3(frame[0]),
        .O(data_out_0[11]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[12]_i_1 
       (.I0(quad_enc_B[12]),
        .I1(frame[1]),
        .I2(quad_enc_A[12]),
        .I3(frame[0]),
        .O(data_out_0[12]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[13]_i_1 
       (.I0(quad_enc_B[13]),
        .I1(frame[1]),
        .I2(quad_enc_A[13]),
        .I3(frame[0]),
        .O(data_out_0[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[14]_i_1 
       (.I0(frame[2]),
        .O(\data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_2 
       (.I0(index_ctrl_B),
        .I1(quad_enc_B[14]),
        .I2(frame[1]),
        .I3(index_ctrl_A),
        .I4(frame[0]),
        .I5(quad_enc_A[14]),
        .O(data_out_0[14]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[1]_i_1 
       (.I0(quad_enc_B[1]),
        .I1(frame[1]),
        .I2(quad_enc_A[1]),
        .I3(frame[0]),
        .O(data_out_0[1]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[2]_i_1 
       (.I0(quad_enc_B[2]),
        .I1(frame[1]),
        .I2(quad_enc_A[2]),
        .I3(frame[0]),
        .O(data_out_0[2]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[3]_i_1 
       (.I0(quad_enc_B[3]),
        .I1(frame[1]),
        .I2(quad_enc_A[3]),
        .I3(frame[0]),
        .O(data_out_0[3]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[4]_i_1 
       (.I0(quad_enc_B[4]),
        .I1(frame[1]),
        .I2(quad_enc_A[4]),
        .I3(frame[0]),
        .O(data_out_0[4]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[5]_i_1 
       (.I0(quad_enc_B[5]),
        .I1(frame[1]),
        .I2(quad_enc_A[5]),
        .I3(frame[0]),
        .O(data_out_0[5]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[6]_i_1 
       (.I0(quad_enc_B[6]),
        .I1(frame[1]),
        .I2(quad_enc_A[6]),
        .I3(frame[0]),
        .O(data_out_0[6]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[7]_i_1 
       (.I0(quad_enc_B[7]),
        .I1(frame[1]),
        .I2(quad_enc_A[7]),
        .I3(frame[0]),
        .O(data_out_0[7]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[8]_i_1 
       (.I0(quad_enc_B[8]),
        .I1(frame[1]),
        .I2(quad_enc_A[8]),
        .I3(frame[0]),
        .O(data_out_0[8]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \data_out[9]_i_1 
       (.I0(quad_enc_B[9]),
        .I1(frame[1]),
        .I2(quad_enc_A[9]),
        .I3(frame[0]),
        .O(data_out_0[9]));
  FDRE \data_out_reg[0] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[10] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[10]),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_out_reg[11] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[11]),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_out_reg[12] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[12]),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_out_reg[13] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[13]),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_out_reg[14] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[14]),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[7]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg[8] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[8]),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_out_reg[9] 
       (.C(clk_in),
        .CE(\data_out[14]_i_1_n_0 ),
        .D(data_out_0[9]),
        .Q(data_out[9]),
        .R(1'b0));
  FDRE \frame_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(D[0]),
        .Q(frame[0]),
        .R(1'b0));
  FDRE \frame_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(D[1]),
        .Q(frame[1]),
        .R(1'b0));
  FDRE \frame_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(D[2]),
        .Q(frame[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    motor_ctrl_A_i_1
       (.I0(frame[2]),
        .I1(frame[1]),
        .O(motor_ctrl_A_i_1_n_0));
  FDRE motor_ctrl_A_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(motor_ctrl_A_i_1_n_0),
        .Q(motor_ctrl_A),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    motor_ctrl_B_i_1
       (.I0(frame[1]),
        .I1(frame[2]),
        .O(motor_ctrl_B_i_1_n_0));
  FDRE motor_ctrl_B_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(motor_ctrl_B_i_1_n_0),
        .Q(motor_ctrl_B),
        .R(1'b0));
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
