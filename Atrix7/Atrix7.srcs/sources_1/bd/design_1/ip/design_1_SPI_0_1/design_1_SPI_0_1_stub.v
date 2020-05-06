// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr 27 23:46:50 2020
// Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_SPI_0_1/design_1_SPI_0_1_stub.v
// Design      : design_1_SPI_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI,Vivado 2019.2" *)
module design_1_SPI_0_1(clk_in, spi_sclk, spi_mosi, spi_ss_n, spi_miso, 
  spi_data_in, spi_data_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,spi_sclk,spi_mosi,spi_ss_n,spi_miso,spi_data_in[15:0],spi_data_out[15:0]" */;
  input clk_in;
  input spi_sclk;
  input spi_mosi;
  input spi_ss_n;
  output spi_miso;
  output [15:0]spi_data_in;
  input [15:0]spi_data_out;
endmodule
