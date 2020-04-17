// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 15 14:27:03 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_delay_0_0_sim_netlist.v
// Design      : design_1_delay_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
   (\output ,
    \input ,
    clk_in);
  output [8:0]\output ;
  input [8:0]\input ;
  input clk_in;

  wire clk_in;
  wire counter;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter_reg_n_0_[0] ;
  wire [8:0]\input ;
  wire [8:0]\output ;
  wire [8:0]preValue;
  wire [3:3]NLW_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;

  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({NLW_counter1_carry_CO_UNCONNECTED[3],counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_1
       (.I0(preValue[6]),
        .I1(\input [6]),
        .I2(\input [8]),
        .I3(preValue[8]),
        .I4(\input [7]),
        .I5(preValue[7]),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_2
       (.I0(preValue[3]),
        .I1(\input [3]),
        .I2(\input [5]),
        .I3(preValue[5]),
        .I4(\input [4]),
        .I5(preValue[4]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_3
       (.I0(preValue[0]),
        .I1(\input [0]),
        .I2(\input [2]),
        .I3(preValue[2]),
        .I4(\input [1]),
        .I5(preValue[1]),
        .O(counter1_carry_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \output[8]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter1_carry_n_1),
        .O(counter));
  FDRE \output_reg[0] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [0]),
        .Q(\output [0]),
        .R(1'b0));
  FDRE \output_reg[1] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [1]),
        .Q(\output [1]),
        .R(1'b0));
  FDRE \output_reg[2] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [2]),
        .Q(\output [2]),
        .R(1'b0));
  FDRE \output_reg[3] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [3]),
        .Q(\output [3]),
        .R(1'b0));
  FDRE \output_reg[4] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [4]),
        .Q(\output [4]),
        .R(1'b0));
  FDRE \output_reg[5] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [5]),
        .Q(\output [5]),
        .R(1'b0));
  FDRE \output_reg[6] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [6]),
        .Q(\output [6]),
        .R(1'b0));
  FDRE \output_reg[7] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [7]),
        .Q(\output [7]),
        .R(1'b0));
  FDRE \output_reg[8] 
       (.C(clk_in),
        .CE(counter),
        .D(\input [8]),
        .Q(\output [8]),
        .R(1'b0));
  FDRE \preValue_reg[0] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [0]),
        .Q(preValue[0]),
        .R(1'b0));
  FDRE \preValue_reg[1] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [1]),
        .Q(preValue[1]),
        .R(1'b0));
  FDRE \preValue_reg[2] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [2]),
        .Q(preValue[2]),
        .R(1'b0));
  FDRE \preValue_reg[3] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [3]),
        .Q(preValue[3]),
        .R(1'b0));
  FDRE \preValue_reg[4] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [4]),
        .Q(preValue[4]),
        .R(1'b0));
  FDRE \preValue_reg[5] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [5]),
        .Q(preValue[5]),
        .R(1'b0));
  FDRE \preValue_reg[6] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [6]),
        .Q(preValue[6]),
        .R(1'b0));
  FDRE \preValue_reg[7] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [7]),
        .Q(preValue[7]),
        .R(1'b0));
  FDRE \preValue_reg[8] 
       (.C(clk_in),
        .CE(counter1_carry_n_1),
        .D(\input [8]),
        .Q(preValue[8]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_delay_0_0,delay,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "delay,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    \input ,
    \output );
  input clk_in;
  input [8:0]\input ;
  output [8:0]\output ;

  wire clk_in;
  wire [8:0]\input ;
  wire [8:0]\output ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay U0
       (.clk_in(clk_in),
        .\input (\input ),
        .\output (\output ));
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
