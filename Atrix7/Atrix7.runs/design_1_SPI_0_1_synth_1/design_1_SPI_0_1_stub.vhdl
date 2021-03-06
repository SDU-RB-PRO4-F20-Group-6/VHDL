-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat May  9 09:59:22 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPI_0_1_stub.vhdl
-- Design      : design_1_SPI_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,spi_sclk,spi_mosi,spi_ss_n,spi_miso,spi_data_in[15:0],spi_data_out[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SPI,Vivado 2019.2";
begin
end;
