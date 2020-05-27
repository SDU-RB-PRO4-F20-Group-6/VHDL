// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 16 10:05:46 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Evenparity_0_0_sim_netlist.v
// Design      : design_1_Evenparity_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Evenparity
   (parity,
    data);
  output parity;
  input [14:0]data;

  wire [14:0]data;
  wire parity;
  wire parity_INST_0_i_1_n_0;
  wire parity_INST_0_i_2_n_0;

  LUT5 #(
    .INIT(32'h96696996)) 
    parity_INST_0
       (.I0(parity_INST_0_i_1_n_0),
        .I1(parity_INST_0_i_2_n_0),
        .I2(data[14]),
        .I3(data[12]),
        .I4(data[13]),
        .O(parity));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    parity_INST_0_i_1
       (.I0(data[1]),
        .I1(data[3]),
        .I2(data[6]),
        .I3(data[7]),
        .I4(data[4]),
        .I5(data[5]),
        .O(parity_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    parity_INST_0_i_2
       (.I0(data[10]),
        .I1(data[0]),
        .I2(data[9]),
        .I3(data[2]),
        .I4(data[11]),
        .I5(data[8]),
        .O(parity_INST_0_i_2_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Evenparity_0_0,Evenparity,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Evenparity,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data,
    parity);
  input [14:0]data;
  output parity;

  wire [14:0]data;
  wire parity;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Evenparity U0
       (.data(data),
        .parity(parity));
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
