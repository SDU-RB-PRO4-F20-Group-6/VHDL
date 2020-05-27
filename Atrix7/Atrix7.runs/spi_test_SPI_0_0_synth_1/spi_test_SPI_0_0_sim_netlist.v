// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 11 20:05:07 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ spi_test_SPI_0_0_sim_netlist.v
// Design      : spi_test_SPI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI
   (spi_miso,
    spi_data_in,
    spi_sclk,
    spi_ss_n,
    clk_in,
    spi_data_out,
    spi_mosi);
  output spi_miso;
  output [15:0]spi_data_in;
  input spi_sclk;
  input spi_ss_n;
  input clk_in;
  input [15:0]spi_data_out;
  input spi_mosi;

  wire [0:15]buf_in;
  wire \buf_in[0]_i_1_n_0 ;
  wire \buf_in[0]_i_2_n_0 ;
  wire \buf_in[10]_i_1_n_0 ;
  wire \buf_in[11]_i_1_n_0 ;
  wire \buf_in[12]_i_1_n_0 ;
  wire \buf_in[13]_i_1_n_0 ;
  wire \buf_in[14]_i_1_n_0 ;
  wire \buf_in[15]_i_1_n_0 ;
  wire \buf_in[1]_i_1_n_0 ;
  wire \buf_in[1]_i_2_n_0 ;
  wire \buf_in[2]_i_1_n_0 ;
  wire \buf_in[2]_i_2_n_0 ;
  wire \buf_in[3]_i_1_n_0 ;
  wire \buf_in[3]_i_2_n_0 ;
  wire \buf_in[4]_i_1_n_0 ;
  wire \buf_in[4]_i_2_n_0 ;
  wire \buf_in[5]_i_1_n_0 ;
  wire \buf_in[5]_i_2_n_0 ;
  wire \buf_in[6]_i_1_n_0 ;
  wire \buf_in[6]_i_2_n_0 ;
  wire \buf_in[7]_i_1_n_0 ;
  wire \buf_in[8]_i_1_n_0 ;
  wire \buf_in[9]_i_1_n_0 ;
  wire [0:15]buf_out;
  wire clk_in;
  wire [3:0]p_0_in;
  wire [3:0]position_reg;
  wire \position_reg[0]__0_n_0 ;
  wire \position_reg[1]__0_n_0 ;
  wire \position_reg[2]__0_n_0 ;
  wire \position_reg[3]__0_n_0 ;
  wire [15:0]spi_data_in;
  wire [15:0]spi_data_out;
  wire spi_miso;
  wire spi_miso_i_1_n_0;
  wire spi_miso_i_5_n_0;
  wire spi_miso_i_6_n_0;
  wire spi_miso_i_7_n_0;
  wire spi_miso_i_8_n_0;
  wire spi_miso_reg_i_2_n_0;
  wire spi_miso_reg_i_3_n_0;
  wire spi_miso_reg_i_4_n_0;
  wire spi_mosi;
  wire spi_sclk;
  wire spi_ss_n;

  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[0]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[0]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[0]),
        .O(\buf_in[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \buf_in[0]_i_2 
       (.I0(\position_reg[0]__0_n_0 ),
        .I1(\position_reg[1]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[10]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[2]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[10]),
        .O(\buf_in[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \buf_in[11]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[3]_i_2_n_0 ),
        .I3(\position_reg[2]__0_n_0 ),
        .I4(spi_ss_n),
        .I5(buf_in[11]),
        .O(\buf_in[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[12]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[4]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[12]),
        .O(\buf_in[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[13]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[5]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[13]),
        .O(\buf_in[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[14]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[6]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[14]),
        .O(\buf_in[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \buf_in[15]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[3]_i_2_n_0 ),
        .I3(\position_reg[2]__0_n_0 ),
        .I4(spi_ss_n),
        .I5(buf_in[15]),
        .O(\buf_in[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[1]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[1]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[1]),
        .O(\buf_in[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \buf_in[1]_i_2 
       (.I0(\position_reg[1]__0_n_0 ),
        .I1(\position_reg[0]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[2]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[2]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[2]),
        .O(\buf_in[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \buf_in[2]_i_2 
       (.I0(\position_reg[0]__0_n_0 ),
        .I1(\position_reg[1]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \buf_in[3]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[3]_i_2_n_0 ),
        .I3(\position_reg[2]__0_n_0 ),
        .I4(spi_ss_n),
        .I5(buf_in[3]),
        .O(\buf_in[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buf_in[3]_i_2 
       (.I0(\position_reg[1]__0_n_0 ),
        .I1(\position_reg[0]__0_n_0 ),
        .O(\buf_in[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[4]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[4]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[4]),
        .O(\buf_in[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \buf_in[4]_i_2 
       (.I0(\position_reg[0]__0_n_0 ),
        .I1(\position_reg[1]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[5]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[5]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[5]),
        .O(\buf_in[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_in[5]_i_2 
       (.I0(\position_reg[1]__0_n_0 ),
        .I1(\position_reg[0]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \buf_in[6]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[6]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[6]),
        .O(\buf_in[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_in[6]_i_2 
       (.I0(\position_reg[0]__0_n_0 ),
        .I1(\position_reg[1]__0_n_0 ),
        .I2(\position_reg[2]__0_n_0 ),
        .O(\buf_in[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \buf_in[7]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[3]_i_2_n_0 ),
        .I3(\position_reg[2]__0_n_0 ),
        .I4(spi_ss_n),
        .I5(buf_in[7]),
        .O(\buf_in[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[8]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[0]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[8]),
        .O(\buf_in[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \buf_in[9]_i_1 
       (.I0(spi_mosi),
        .I1(\position_reg[3]__0_n_0 ),
        .I2(\buf_in[1]_i_2_n_0 ),
        .I3(spi_ss_n),
        .I4(buf_in[9]),
        .O(\buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[0] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[0]_i_1_n_0 ),
        .Q(buf_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[10] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[10]_i_1_n_0 ),
        .Q(buf_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[11] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[11]_i_1_n_0 ),
        .Q(buf_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[12] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[12]_i_1_n_0 ),
        .Q(buf_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[13] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[13]_i_1_n_0 ),
        .Q(buf_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[14] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[14]_i_1_n_0 ),
        .Q(buf_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[15] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[15]_i_1_n_0 ),
        .Q(buf_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[1] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[1]_i_1_n_0 ),
        .Q(buf_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[2] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[2]_i_1_n_0 ),
        .Q(buf_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[3] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[3]_i_1_n_0 ),
        .Q(buf_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[4] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[4]_i_1_n_0 ),
        .Q(buf_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[5] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[5]_i_1_n_0 ),
        .Q(buf_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[6] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[6]_i_1_n_0 ),
        .Q(buf_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[7] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[7]_i_1_n_0 ),
        .Q(buf_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[8] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[8]_i_1_n_0 ),
        .Q(buf_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_in_reg[9] 
       (.C(spi_sclk),
        .CE(1'b1),
        .D(\buf_in[9]_i_1_n_0 ),
        .Q(buf_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[0] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[15]),
        .Q(buf_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[10] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[5]),
        .Q(buf_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[11] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[4]),
        .Q(buf_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[12] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[3]),
        .Q(buf_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[13] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[2]),
        .Q(buf_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[14] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[1]),
        .Q(buf_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[15] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[0]),
        .Q(buf_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[1] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[14]),
        .Q(buf_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[2] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[13]),
        .Q(buf_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[3] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[12]),
        .Q(buf_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[4] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[11]),
        .Q(buf_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[5] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[10]),
        .Q(buf_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[6] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[9]),
        .Q(buf_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[7] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[8]),
        .Q(buf_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[8] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[7]),
        .Q(buf_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buf_out_reg[9] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(spi_data_out[6]),
        .Q(buf_out[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \position[0]_i_1 
       (.I0(\position_reg[0]__0_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \position[1]_i_1 
       (.I0(\position_reg[0]__0_n_0 ),
        .I1(\position_reg[1]__0_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \position[2]_i_1 
       (.I0(\position_reg[2]__0_n_0 ),
        .I1(\position_reg[0]__0_n_0 ),
        .I2(\position_reg[1]__0_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \position[3]_i_1 
       (.I0(\position_reg[3]__0_n_0 ),
        .I1(\position_reg[0]__0_n_0 ),
        .I2(\position_reg[1]__0_n_0 ),
        .I3(\position_reg[2]__0_n_0 ),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[0] 
       (.C(spi_sclk),
        .CE(spi_miso_i_1_n_0),
        .D(p_0_in[0]),
        .Q(position_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[0]__0 
       (.C(clk_in),
        .CE(1'b1),
        .D(position_reg[0]),
        .Q(\position_reg[0]__0_n_0 ),
        .R(spi_ss_n));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[1] 
       (.C(spi_sclk),
        .CE(spi_miso_i_1_n_0),
        .D(p_0_in[1]),
        .Q(position_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[1]__0 
       (.C(clk_in),
        .CE(1'b1),
        .D(position_reg[1]),
        .Q(\position_reg[1]__0_n_0 ),
        .R(spi_ss_n));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[2] 
       (.C(spi_sclk),
        .CE(spi_miso_i_1_n_0),
        .D(p_0_in[2]),
        .Q(position_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[2]__0 
       (.C(clk_in),
        .CE(1'b1),
        .D(position_reg[2]),
        .Q(\position_reg[2]__0_n_0 ),
        .R(spi_ss_n));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \position_reg[3] 
       (.C(spi_sclk),
        .CE(spi_miso_i_1_n_0),
        .D(p_0_in[3]),
        .Q(position_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \position_reg[3]__0 
       (.C(clk_in),
        .CE(1'b1),
        .D(position_reg[3]),
        .Q(\position_reg[3]__0_n_0 ),
        .R(spi_ss_n));
  FDRE \spi_data_in_reg[0] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[15]),
        .Q(spi_data_in[0]),
        .R(1'b0));
  FDRE \spi_data_in_reg[10] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[5]),
        .Q(spi_data_in[10]),
        .R(1'b0));
  FDRE \spi_data_in_reg[11] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[4]),
        .Q(spi_data_in[11]),
        .R(1'b0));
  FDRE \spi_data_in_reg[12] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[3]),
        .Q(spi_data_in[12]),
        .R(1'b0));
  FDRE \spi_data_in_reg[13] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[2]),
        .Q(spi_data_in[13]),
        .R(1'b0));
  FDRE \spi_data_in_reg[14] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[1]),
        .Q(spi_data_in[14]),
        .R(1'b0));
  FDRE \spi_data_in_reg[15] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[0]),
        .Q(spi_data_in[15]),
        .R(1'b0));
  FDRE \spi_data_in_reg[1] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[14]),
        .Q(spi_data_in[1]),
        .R(1'b0));
  FDRE \spi_data_in_reg[2] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[13]),
        .Q(spi_data_in[2]),
        .R(1'b0));
  FDRE \spi_data_in_reg[3] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[12]),
        .Q(spi_data_in[3]),
        .R(1'b0));
  FDRE \spi_data_in_reg[4] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[11]),
        .Q(spi_data_in[4]),
        .R(1'b0));
  FDRE \spi_data_in_reg[5] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[10]),
        .Q(spi_data_in[5]),
        .R(1'b0));
  FDRE \spi_data_in_reg[6] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[9]),
        .Q(spi_data_in[6]),
        .R(1'b0));
  FDRE \spi_data_in_reg[7] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[8]),
        .Q(spi_data_in[7]),
        .R(1'b0));
  FDRE \spi_data_in_reg[8] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[7]),
        .Q(spi_data_in[8]),
        .R(1'b0));
  FDRE \spi_data_in_reg[9] 
       (.C(clk_in),
        .CE(spi_ss_n),
        .D(buf_in[6]),
        .Q(spi_data_in[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    spi_miso_i_1
       (.I0(spi_ss_n),
        .O(spi_miso_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_5
       (.I0(buf_out[4]),
        .I1(buf_out[2]),
        .I2(\position_reg[0]__0_n_0 ),
        .I3(buf_out[3]),
        .I4(\position_reg[1]__0_n_0 ),
        .I5(buf_out[1]),
        .O(spi_miso_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_6
       (.I0(buf_out[8]),
        .I1(buf_out[6]),
        .I2(\position_reg[0]__0_n_0 ),
        .I3(buf_out[7]),
        .I4(\position_reg[1]__0_n_0 ),
        .I5(buf_out[5]),
        .O(spi_miso_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_7
       (.I0(buf_out[12]),
        .I1(buf_out[10]),
        .I2(\position_reg[0]__0_n_0 ),
        .I3(buf_out[11]),
        .I4(\position_reg[1]__0_n_0 ),
        .I5(buf_out[9]),
        .O(spi_miso_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_8
       (.I0(buf_out[0]),
        .I1(buf_out[14]),
        .I2(\position_reg[0]__0_n_0 ),
        .I3(buf_out[15]),
        .I4(\position_reg[1]__0_n_0 ),
        .I5(buf_out[13]),
        .O(spi_miso_i_8_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    spi_miso_reg
       (.C(spi_sclk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_miso_reg_i_2_n_0),
        .Q(spi_miso),
        .R(1'b0));
  MUXF8 spi_miso_reg_i_2
       (.I0(spi_miso_reg_i_3_n_0),
        .I1(spi_miso_reg_i_4_n_0),
        .O(spi_miso_reg_i_2_n_0),
        .S(\position_reg[3]__0_n_0 ));
  MUXF7 spi_miso_reg_i_3
       (.I0(spi_miso_i_5_n_0),
        .I1(spi_miso_i_6_n_0),
        .O(spi_miso_reg_i_3_n_0),
        .S(\position_reg[2]__0_n_0 ));
  MUXF7 spi_miso_reg_i_4
       (.I0(spi_miso_i_7_n_0),
        .I1(spi_miso_i_8_n_0),
        .O(spi_miso_reg_i_4_n_0),
        .S(\position_reg[2]__0_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "spi_test_SPI_0_0,SPI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    spi_sclk,
    spi_mosi,
    spi_ss_n,
    spi_miso,
    spi_data_in,
    spi_data_out);
  input clk_in;
  input spi_sclk;
  input spi_mosi;
  input spi_ss_n;
  output spi_miso;
  output [15:0]spi_data_in;
  input [15:0]spi_data_out;

  wire clk_in;
  wire [15:0]spi_data_in;
  wire [15:0]spi_data_out;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sclk;
  wire spi_ss_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI U0
       (.clk_in(clk_in),
        .spi_data_in(spi_data_in),
        .spi_data_out(spi_data_out),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sclk(spi_sclk),
        .spi_ss_n(spi_ss_n));
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
