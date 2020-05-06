// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed May  6 11:41:08 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_delay_1_0_sim_netlist.v
// Design      : design_1_delay_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
   (signal_out,
    clk_in,
    signal_in);
  output [0:0]signal_out;
  input clk_in;
  input [0:0]signal_in;

  wire clk_in;
  wire \counter_reg_n_0_[0] ;
  wire preValue;
  wire [0:0]signal_in;
  wire [0:0]signal_out;
  wire \signal_out[0]_i_1_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \preValue_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(signal_in),
        .Q(preValue),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD80)) 
    \signal_out[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(preValue),
        .I2(signal_in),
        .I3(signal_out),
        .O(\signal_out[0]_i_1_n_0 ));
  FDRE \signal_out_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\signal_out[0]_i_1_n_0 ),
        .Q(signal_out),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_delay_1_0,delay,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "delay,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    signal_in,
    signal_out);
  input clk_in;
  input [0:0]signal_in;
  output [0:0]signal_out;

  wire clk_in;
  wire [0:0]signal_in;
  wire [0:0]signal_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay U0
       (.clk_in(clk_in),
        .signal_in(signal_in),
        .signal_out(signal_out));
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
