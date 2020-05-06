// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  6 14:27:33 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_quadratur_decoder_0_4/design_1_quadratur_decoder_0_4_sim_netlist.v
// Design      : design_1_quadratur_decoder_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_quadratur_decoder_0_4,quadratur_decoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "quadratur_decoder,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_quadratur_decoder_0_4
   (clk_in,
    encoder,
    reset,
    value);
  input clk_in;
  input [1:0]encoder;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [14:0]value;

  wire clk_in;
  wire [1:0]encoder;
  wire reset;
  wire [14:0]value;

  design_1_quadratur_decoder_0_4_quadratur_decoder U0
       (.clk_in(clk_in),
        .encoder(encoder),
        .reset(reset),
        .value(value));
endmodule

(* ORIG_REF_NAME = "quadratur_decoder" *) 
module design_1_quadratur_decoder_0_4_quadratur_decoder
   (value,
    encoder,
    clk_in,
    reset);
  output [14:0]value;
  input [1:0]encoder;
  input clk_in;
  input reset;

  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_n_3;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire clk_in;
  wire [19:0]debounce_counter_B;
  wire debounce_counter_B1;
  wire \debounce_counter_B[0]_i_1_n_0 ;
  wire \debounce_counter_B[14]_i_1_n_0 ;
  wire \debounce_counter_B[16]_i_1_n_0 ;
  wire \debounce_counter_B[17]_i_1_n_0 ;
  wire \debounce_counter_B[18]_i_1_n_0 ;
  wire \debounce_counter_B[19]_i_1_n_0 ;
  wire \debounce_counter_B[1]_i_1_n_0 ;
  wire \debounce_counter_B[2]_i_1_n_0 ;
  wire \debounce_counter_B[3]_i_1_n_0 ;
  wire \debounce_counter_B[4]_i_1_n_0 ;
  wire \debounce_counter_B[5]_i_1_n_0 ;
  wire \debounce_counter_B[9]_i_1_n_0 ;
  wire \debounce_counter_B_reg[12]_i_1_n_0 ;
  wire \debounce_counter_B_reg[12]_i_1_n_1 ;
  wire \debounce_counter_B_reg[12]_i_1_n_2 ;
  wire \debounce_counter_B_reg[12]_i_1_n_3 ;
  wire \debounce_counter_B_reg[15]_i_2_n_0 ;
  wire \debounce_counter_B_reg[15]_i_2_n_1 ;
  wire \debounce_counter_B_reg[15]_i_2_n_2 ;
  wire \debounce_counter_B_reg[15]_i_2_n_3 ;
  wire \debounce_counter_B_reg[19]_i_2_n_2 ;
  wire \debounce_counter_B_reg[19]_i_2_n_3 ;
  wire \debounce_counter_B_reg[8]_i_1_n_0 ;
  wire \debounce_counter_B_reg[8]_i_1_n_1 ;
  wire \debounce_counter_B_reg[8]_i_1_n_2 ;
  wire \debounce_counter_B_reg[8]_i_1_n_3 ;
  wire \debounce_counter_B_reg[8]_i_2_n_0 ;
  wire \debounce_counter_B_reg[8]_i_2_n_1 ;
  wire \debounce_counter_B_reg[8]_i_2_n_2 ;
  wire \debounce_counter_B_reg[8]_i_2_n_3 ;
  wire [1:0]encoder;
  wire [19:1]p_2_in;
  wire [14:1]position;
  wire \position[14]_i_10_n_0 ;
  wire \position[14]_i_11_n_0 ;
  wire \position[14]_i_12_n_0 ;
  wire \position[14]_i_13_n_0 ;
  wire \position[14]_i_14_n_0 ;
  wire \position[14]_i_1_n_0 ;
  wire \position[14]_i_3_n_0 ;
  wire \position[14]_i_4_n_0 ;
  wire \position[14]_i_5_n_0 ;
  wire \position[14]_i_6_n_0 ;
  wire \position[14]_i_7_n_0 ;
  wire \position[14]_i_8_n_0 ;
  wire \position[14]_i_9_n_0 ;
  wire [14:0]position_0;
  wire \position_reg_n_0_[0] ;
  wire \position_reg_n_0_[10] ;
  wire \position_reg_n_0_[11] ;
  wire \position_reg_n_0_[12] ;
  wire \position_reg_n_0_[13] ;
  wire \position_reg_n_0_[14] ;
  wire \position_reg_n_0_[1] ;
  wire \position_reg_n_0_[2] ;
  wire \position_reg_n_0_[3] ;
  wire \position_reg_n_0_[4] ;
  wire \position_reg_n_0_[5] ;
  wire \position_reg_n_0_[6] ;
  wire \position_reg_n_0_[7] ;
  wire \position_reg_n_0_[8] ;
  wire \position_reg_n_0_[9] ;
  wire [1:0]preposition;
  wire reset;
  wire [14:0]value;
  wire [3:1]NLW__carry__2_CO_UNCONNECTED;
  wire [3:2]NLW__carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_debounce_counter_B_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_debounce_counter_B_reg[19]_i_2_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(\position_reg_n_0_[0] ),
        .DI({\position_reg_n_0_[3] ,\position_reg_n_0_[2] ,\position_reg_n_0_[1] ,_carry_i_1_n_0}),
        .O(position[4:1]),
        .S({_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0,_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\position_reg_n_0_[7] ,\position_reg_n_0_[6] ,\position_reg_n_0_[5] ,\position_reg_n_0_[4] }),
        .O(position[8:5]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_1
       (.I0(\position_reg_n_0_[7] ),
        .I1(\position_reg_n_0_[8] ),
        .O(_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_2
       (.I0(\position_reg_n_0_[6] ),
        .I1(\position_reg_n_0_[7] ),
        .O(_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_3
       (.I0(\position_reg_n_0_[5] ),
        .I1(\position_reg_n_0_[6] ),
        .O(_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_4
       (.I0(\position_reg_n_0_[4] ),
        .I1(\position_reg_n_0_[5] ),
        .O(_carry__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\position_reg_n_0_[11] ,\position_reg_n_0_[10] ,\position_reg_n_0_[9] ,\position_reg_n_0_[8] }),
        .O(position[12:9]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_1
       (.I0(\position_reg_n_0_[11] ),
        .I1(\position_reg_n_0_[12] ),
        .O(_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_2
       (.I0(\position_reg_n_0_[10] ),
        .I1(\position_reg_n_0_[11] ),
        .O(_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_3
       (.I0(\position_reg_n_0_[9] ),
        .I1(\position_reg_n_0_[10] ),
        .O(_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_4
       (.I0(\position_reg_n_0_[8] ),
        .I1(\position_reg_n_0_[9] ),
        .O(_carry__1_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({NLW__carry__2_CO_UNCONNECTED[3:1],_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\position_reg_n_0_[12] }),
        .O({NLW__carry__2_O_UNCONNECTED[3:2],position[14:13]}),
        .S({1'b0,1'b0,_carry__2_i_1_n_0,_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_1
       (.I0(\position_reg_n_0_[13] ),
        .I1(\position_reg_n_0_[14] ),
        .O(_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__2_i_2
       (.I0(\position_reg_n_0_[12] ),
        .I1(\position_reg_n_0_[13] ),
        .O(_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_1
       (.I0(\position_reg_n_0_[1] ),
        .O(_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_2
       (.I0(\position_reg_n_0_[3] ),
        .I1(\position_reg_n_0_[4] ),
        .O(_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_3
       (.I0(\position_reg_n_0_[2] ),
        .I1(\position_reg_n_0_[3] ),
        .O(_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_4
       (.I0(\position_reg_n_0_[1] ),
        .I1(\position_reg_n_0_[2] ),
        .O(_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_5
       (.I0(\position_reg_n_0_[1] ),
        .I1(preposition[0]),
        .I2(encoder[1]),
        .O(_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \debounce_counter_B[0]_i_1 
       (.I0(debounce_counter_B[0]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[14]_i_1 
       (.I0(p_2_in[14]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \debounce_counter_B[15]_i_1 
       (.I0(encoder[1]),
        .I1(preposition[1]),
        .O(debounce_counter_B1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[16]_i_1 
       (.I0(p_2_in[16]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[17]_i_1 
       (.I0(p_2_in[17]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[18]_i_1 
       (.I0(p_2_in[18]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[19]_i_1 
       (.I0(p_2_in[19]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[2]_i_1 
       (.I0(p_2_in[2]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[3]_i_1 
       (.I0(p_2_in[3]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[4]_i_1 
       (.I0(p_2_in[4]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[5]_i_1 
       (.I0(p_2_in[5]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \debounce_counter_B[9]_i_1 
       (.I0(p_2_in[9]),
        .I1(preposition[1]),
        .I2(encoder[1]),
        .O(\debounce_counter_B[9]_i_1_n_0 ));
  FDRE \debounce_counter_B_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[0]_i_1_n_0 ),
        .Q(debounce_counter_B[0]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[10]),
        .Q(debounce_counter_B[10]),
        .R(debounce_counter_B1));
  FDRE \debounce_counter_B_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[11]),
        .Q(debounce_counter_B[11]),
        .R(debounce_counter_B1));
  FDRE \debounce_counter_B_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[12]),
        .Q(debounce_counter_B[12]),
        .R(debounce_counter_B1));
  CARRY4 \debounce_counter_B_reg[12]_i_1 
       (.CI(\debounce_counter_B_reg[8]_i_1_n_0 ),
        .CO({\debounce_counter_B_reg[12]_i_1_n_0 ,\debounce_counter_B_reg[12]_i_1_n_1 ,\debounce_counter_B_reg[12]_i_1_n_2 ,\debounce_counter_B_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[12:9]),
        .S(debounce_counter_B[12:9]));
  FDRE \debounce_counter_B_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[13]),
        .Q(debounce_counter_B[13]),
        .R(debounce_counter_B1));
  FDRE \debounce_counter_B_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[14]_i_1_n_0 ),
        .Q(debounce_counter_B[14]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[15]),
        .Q(debounce_counter_B[15]),
        .R(debounce_counter_B1));
  CARRY4 \debounce_counter_B_reg[15]_i_2 
       (.CI(\debounce_counter_B_reg[12]_i_1_n_0 ),
        .CO({\debounce_counter_B_reg[15]_i_2_n_0 ,\debounce_counter_B_reg[15]_i_2_n_1 ,\debounce_counter_B_reg[15]_i_2_n_2 ,\debounce_counter_B_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[16:13]),
        .S(debounce_counter_B[16:13]));
  FDRE \debounce_counter_B_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[16]_i_1_n_0 ),
        .Q(debounce_counter_B[16]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[17]_i_1_n_0 ),
        .Q(debounce_counter_B[17]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[18]_i_1_n_0 ),
        .Q(debounce_counter_B[18]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[19]_i_1_n_0 ),
        .Q(debounce_counter_B[19]),
        .R(1'b0));
  CARRY4 \debounce_counter_B_reg[19]_i_2 
       (.CI(\debounce_counter_B_reg[15]_i_2_n_0 ),
        .CO({\NLW_debounce_counter_B_reg[19]_i_2_CO_UNCONNECTED [3:2],\debounce_counter_B_reg[19]_i_2_n_2 ,\debounce_counter_B_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_debounce_counter_B_reg[19]_i_2_O_UNCONNECTED [3],p_2_in[19:17]}),
        .S({1'b0,debounce_counter_B[19:17]}));
  FDRE \debounce_counter_B_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[1]_i_1_n_0 ),
        .Q(debounce_counter_B[1]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[2]_i_1_n_0 ),
        .Q(debounce_counter_B[2]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[3]_i_1_n_0 ),
        .Q(debounce_counter_B[3]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[4]_i_1_n_0 ),
        .Q(debounce_counter_B[4]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[5]_i_1_n_0 ),
        .Q(debounce_counter_B[5]),
        .R(1'b0));
  FDRE \debounce_counter_B_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[6]),
        .Q(debounce_counter_B[6]),
        .R(debounce_counter_B1));
  FDRE \debounce_counter_B_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[7]),
        .Q(debounce_counter_B[7]),
        .R(debounce_counter_B1));
  FDRE \debounce_counter_B_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_2_in[8]),
        .Q(debounce_counter_B[8]),
        .R(debounce_counter_B1));
  CARRY4 \debounce_counter_B_reg[8]_i_1 
       (.CI(\debounce_counter_B_reg[8]_i_2_n_0 ),
        .CO({\debounce_counter_B_reg[8]_i_1_n_0 ,\debounce_counter_B_reg[8]_i_1_n_1 ,\debounce_counter_B_reg[8]_i_1_n_2 ,\debounce_counter_B_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[8:5]),
        .S(debounce_counter_B[8:5]));
  CARRY4 \debounce_counter_B_reg[8]_i_2 
       (.CI(1'b0),
        .CO({\debounce_counter_B_reg[8]_i_2_n_0 ,\debounce_counter_B_reg[8]_i_2_n_1 ,\debounce_counter_B_reg[8]_i_2_n_2 ,\debounce_counter_B_reg[8]_i_2_n_3 }),
        .CYINIT(debounce_counter_B[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[4:1]),
        .S(debounce_counter_B[4:1]));
  FDRE \debounce_counter_B_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\debounce_counter_B[9]_i_1_n_0 ),
        .Q(debounce_counter_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \position[0]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(\position_reg_n_0_[0] ),
        .O(position_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[10]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[10]),
        .O(position_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[11]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[11]),
        .O(position_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[12]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[12]),
        .O(position_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[13]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[13]),
        .O(position_0[13]));
  LUT6 #(
    .INIT(64'h00000000EEEFAAAA)) 
    \position[14]_i_1 
       (.I0(debounce_counter_B[19]),
        .I1(\position[14]_i_3_n_0 ),
        .I2(\position[14]_i_4_n_0 ),
        .I3(\position[14]_i_5_n_0 ),
        .I4(debounce_counter_B[18]),
        .I5(\position[14]_i_6_n_0 ),
        .O(\position[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \position[14]_i_10 
       (.I0(debounce_counter_B[6]),
        .I1(debounce_counter_B[4]),
        .I2(debounce_counter_B[5]),
        .O(\position[14]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \position[14]_i_11 
       (.I0(debounce_counter_B[8]),
        .I1(debounce_counter_B[7]),
        .O(\position[14]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \position[14]_i_12 
       (.I0(\position_reg_n_0_[4] ),
        .I1(\position_reg_n_0_[5] ),
        .I2(\position_reg_n_0_[6] ),
        .I3(\position_reg_n_0_[7] ),
        .I4(\position_reg_n_0_[8] ),
        .O(\position[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \position[14]_i_13 
       (.I0(\position_reg_n_0_[14] ),
        .I1(\position_reg_n_0_[13] ),
        .I2(\position_reg_n_0_[9] ),
        .I3(\position_reg_n_0_[10] ),
        .I4(\position_reg_n_0_[11] ),
        .I5(\position_reg_n_0_[12] ),
        .O(\position[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \position[14]_i_14 
       (.I0(\position_reg_n_0_[7] ),
        .I1(\position_reg_n_0_[6] ),
        .I2(\position_reg_n_0_[1] ),
        .I3(\position_reg_n_0_[8] ),
        .I4(\position_reg_n_0_[3] ),
        .I5(\position_reg_n_0_[0] ),
        .O(\position[14]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \position[14]_i_2 
       (.I0(\position[14]_i_7_n_0 ),
        .I1(position[14]),
        .I2(\position[14]_i_8_n_0 ),
        .O(position_0[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \position[14]_i_3 
       (.I0(debounce_counter_B[17]),
        .I1(debounce_counter_B[16]),
        .O(\position[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FF57)) 
    \position[14]_i_4 
       (.I0(debounce_counter_B[10]),
        .I1(\position[14]_i_9_n_0 ),
        .I2(\position[14]_i_10_n_0 ),
        .I3(\position[14]_i_11_n_0 ),
        .I4(debounce_counter_B[9]),
        .I5(debounce_counter_B[11]),
        .O(\position[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \position[14]_i_5 
       (.I0(debounce_counter_B[12]),
        .I1(debounce_counter_B[13]),
        .I2(debounce_counter_B[14]),
        .I3(debounce_counter_B[15]),
        .O(\position[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9669966984219669)) 
    \position[14]_i_6 
       (.I0(preposition[1]),
        .I1(preposition[0]),
        .I2(encoder[1]),
        .I3(encoder[0]),
        .I4(\position[14]_i_12_n_0 ),
        .I5(\position[14]_i_13_n_0 ),
        .O(\position[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEEA)) 
    \position[14]_i_7 
       (.I0(\position_reg_n_0_[8] ),
        .I1(\position_reg_n_0_[7] ),
        .I2(\position_reg_n_0_[6] ),
        .I3(\position_reg_n_0_[5] ),
        .I4(\position_reg_n_0_[4] ),
        .I5(\position[14]_i_13_n_0 ),
        .O(\position[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \position[14]_i_8 
       (.I0(\position[14]_i_13_n_0 ),
        .I1(\position[14]_i_14_n_0 ),
        .I2(\position_reg_n_0_[5] ),
        .I3(\position_reg_n_0_[4] ),
        .I4(\position_reg_n_0_[2] ),
        .O(\position[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \position[14]_i_9 
       (.I0(debounce_counter_B[3]),
        .I1(debounce_counter_B[0]),
        .I2(debounce_counter_B[2]),
        .I3(debounce_counter_B[1]),
        .O(\position[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[1]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[1]),
        .O(position_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[2]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[2]),
        .O(position_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[3]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[3]),
        .O(position_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \position[4]_i_1 
       (.I0(position[4]),
        .I1(\position[14]_i_7_n_0 ),
        .O(position_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \position[5]_i_1 
       (.I0(position[5]),
        .I1(\position[14]_i_7_n_0 ),
        .O(position_0[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \position[6]_i_1 
       (.I0(position[6]),
        .I1(\position[14]_i_7_n_0 ),
        .O(position_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[7]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[7]),
        .O(position_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \position[8]_i_1 
       (.I0(position[8]),
        .I1(\position[14]_i_7_n_0 ),
        .O(position_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \position[9]_i_1 
       (.I0(\position[14]_i_8_n_0 ),
        .I1(\position[14]_i_7_n_0 ),
        .I2(position[9]),
        .O(position_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[0] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[0]),
        .Q(\position_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[10] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[10]),
        .Q(\position_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[11] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[11]),
        .Q(\position_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[12] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[12]),
        .Q(\position_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[13] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[13]),
        .Q(\position_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[14] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[14]),
        .Q(\position_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[1] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[1]),
        .Q(\position_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[2] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[2]),
        .Q(\position_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[3] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[3]),
        .Q(\position_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[4] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[4]),
        .Q(\position_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[5] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[5]),
        .Q(\position_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[6] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[6]),
        .Q(\position_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[7] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[7]),
        .Q(\position_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[8] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[8]),
        .Q(\position_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[9] 
       (.C(clk_in),
        .CE(\position[14]_i_1_n_0 ),
        .D(position_0[9]),
        .Q(\position_reg_n_0_[9] ),
        .R(reset));
  FDRE \preposition_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(encoder[0]),
        .Q(preposition[0]),
        .R(1'b0));
  FDRE \preposition_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(encoder[1]),
        .Q(preposition[1]),
        .R(1'b0));
  FDRE \value_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[0] ),
        .Q(value[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[10] ),
        .Q(value[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[11] ),
        .Q(value[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[12] ),
        .Q(value[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[13] ),
        .Q(value[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[14] ),
        .Q(value[14]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[1] ),
        .Q(value[1]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[2] ),
        .Q(value[2]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[3] ),
        .Q(value[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[4] ),
        .Q(value[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[5] ),
        .Q(value[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[6] ),
        .Q(value[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[7] ),
        .Q(value[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[8] ),
        .Q(value[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\position_reg_n_0_[9] ),
        .Q(value[9]),
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
