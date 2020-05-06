-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Apr 27 23:46:50 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_SPI_0_1/design_1_SPI_0_1_sim_netlist.vhdl
-- Design      : design_1_SPI_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_0_1_SPI is
  port (
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_sclk : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_mosi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_0_1_SPI : entity is "SPI";
end design_1_SPI_0_1_SPI;

architecture STRUCTURE of design_1_SPI_0_1_SPI is
  signal buf_in : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \buf_in[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[0]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[10]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[11]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[12]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[13]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[14]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[15]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[1]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[2]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[2]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[3]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[3]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[4]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[4]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[5]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[5]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[6]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[6]_i_2_n_0\ : STD_LOGIC;
  signal \buf_in[7]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[8]_i_1_n_0\ : STD_LOGIC;
  signal \buf_in[9]_i_1_n_0\ : STD_LOGIC;
  signal buf_out : STD_LOGIC_VECTOR ( 0 to 15 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal position_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \position_reg[0]__0_n_0\ : STD_LOGIC;
  signal \position_reg[1]__0_n_0\ : STD_LOGIC;
  signal \position_reg[2]__0_n_0\ : STD_LOGIC;
  signal \position_reg[3]__0_n_0\ : STD_LOGIC;
  signal spi_miso_i_1_n_0 : STD_LOGIC;
  signal spi_miso_i_5_n_0 : STD_LOGIC;
  signal spi_miso_i_6_n_0 : STD_LOGIC;
  signal spi_miso_i_7_n_0 : STD_LOGIC;
  signal spi_miso_i_8_n_0 : STD_LOGIC;
  signal spi_miso_reg_i_2_n_0 : STD_LOGIC;
  signal spi_miso_reg_i_3_n_0 : STD_LOGIC;
  signal spi_miso_reg_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_in[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buf_in[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \buf_in[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buf_in[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \buf_in[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buf_in[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buf_in[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \position[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \position[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \position[3]_i_1\ : label is "soft_lutpair0";
begin
\buf_in[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[0]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(0),
      O => \buf_in[0]_i_1_n_0\
    );
\buf_in[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      I1 => \position_reg[1]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[0]_i_2_n_0\
    );
\buf_in[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[2]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(10),
      O => \buf_in[10]_i_1_n_0\
    );
\buf_in[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[3]_i_2_n_0\,
      I3 => \position_reg[2]__0_n_0\,
      I4 => spi_ss_n,
      I5 => buf_in(11),
      O => \buf_in[11]_i_1_n_0\
    );
\buf_in[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[4]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(12),
      O => \buf_in[12]_i_1_n_0\
    );
\buf_in[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[5]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(13),
      O => \buf_in[13]_i_1_n_0\
    );
\buf_in[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[6]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(14),
      O => \buf_in[14]_i_1_n_0\
    );
\buf_in[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[3]_i_2_n_0\,
      I3 => \position_reg[2]__0_n_0\,
      I4 => spi_ss_n,
      I5 => buf_in(15),
      O => \buf_in[15]_i_1_n_0\
    );
\buf_in[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[1]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(1),
      O => \buf_in[1]_i_1_n_0\
    );
\buf_in[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \position_reg[1]__0_n_0\,
      I1 => \position_reg[0]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[1]_i_2_n_0\
    );
\buf_in[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[2]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(2),
      O => \buf_in[2]_i_1_n_0\
    );
\buf_in[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      I1 => \position_reg[1]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[2]_i_2_n_0\
    );
\buf_in[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[3]_i_2_n_0\,
      I3 => \position_reg[2]__0_n_0\,
      I4 => spi_ss_n,
      I5 => buf_in(3),
      O => \buf_in[3]_i_1_n_0\
    );
\buf_in[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \position_reg[1]__0_n_0\,
      I1 => \position_reg[0]__0_n_0\,
      O => \buf_in[3]_i_2_n_0\
    );
\buf_in[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[4]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(4),
      O => \buf_in[4]_i_1_n_0\
    );
\buf_in[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      I1 => \position_reg[1]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[4]_i_2_n_0\
    );
\buf_in[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[5]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(5),
      O => \buf_in[5]_i_1_n_0\
    );
\buf_in[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \position_reg[1]__0_n_0\,
      I1 => \position_reg[0]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[5]_i_2_n_0\
    );
\buf_in[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[6]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(6),
      O => \buf_in[6]_i_1_n_0\
    );
\buf_in[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      I1 => \position_reg[1]__0_n_0\,
      I2 => \position_reg[2]__0_n_0\,
      O => \buf_in[6]_i_2_n_0\
    );
\buf_in[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[3]_i_2_n_0\,
      I3 => \position_reg[2]__0_n_0\,
      I4 => spi_ss_n,
      I5 => buf_in(7),
      O => \buf_in[7]_i_1_n_0\
    );
\buf_in[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[0]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(8),
      O => \buf_in[8]_i_1_n_0\
    );
\buf_in[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => spi_mosi,
      I1 => \position_reg[3]__0_n_0\,
      I2 => \buf_in[1]_i_2_n_0\,
      I3 => spi_ss_n,
      I4 => buf_in(9),
      O => \buf_in[9]_i_1_n_0\
    );
\buf_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[0]_i_1_n_0\,
      Q => buf_in(0),
      R => '0'
    );
\buf_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[10]_i_1_n_0\,
      Q => buf_in(10),
      R => '0'
    );
\buf_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[11]_i_1_n_0\,
      Q => buf_in(11),
      R => '0'
    );
\buf_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[12]_i_1_n_0\,
      Q => buf_in(12),
      R => '0'
    );
\buf_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[13]_i_1_n_0\,
      Q => buf_in(13),
      R => '0'
    );
\buf_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[14]_i_1_n_0\,
      Q => buf_in(14),
      R => '0'
    );
\buf_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[15]_i_1_n_0\,
      Q => buf_in(15),
      R => '0'
    );
\buf_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[1]_i_1_n_0\,
      Q => buf_in(1),
      R => '0'
    );
\buf_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[2]_i_1_n_0\,
      Q => buf_in(2),
      R => '0'
    );
\buf_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[3]_i_1_n_0\,
      Q => buf_in(3),
      R => '0'
    );
\buf_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[4]_i_1_n_0\,
      Q => buf_in(4),
      R => '0'
    );
\buf_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[5]_i_1_n_0\,
      Q => buf_in(5),
      R => '0'
    );
\buf_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[6]_i_1_n_0\,
      Q => buf_in(6),
      R => '0'
    );
\buf_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[7]_i_1_n_0\,
      Q => buf_in(7),
      R => '0'
    );
\buf_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[8]_i_1_n_0\,
      Q => buf_in(8),
      R => '0'
    );
\buf_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_sclk,
      CE => '1',
      D => \buf_in[9]_i_1_n_0\,
      Q => buf_in(9),
      R => '0'
    );
\buf_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(15),
      Q => buf_out(0),
      R => '0'
    );
\buf_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(5),
      Q => buf_out(10),
      R => '0'
    );
\buf_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(4),
      Q => buf_out(11),
      R => '0'
    );
\buf_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(3),
      Q => buf_out(12),
      R => '0'
    );
\buf_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(2),
      Q => buf_out(13),
      R => '0'
    );
\buf_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(1),
      Q => buf_out(14),
      R => '0'
    );
\buf_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(0),
      Q => buf_out(15),
      R => '0'
    );
\buf_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(14),
      Q => buf_out(1),
      R => '0'
    );
\buf_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(13),
      Q => buf_out(2),
      R => '0'
    );
\buf_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(12),
      Q => buf_out(3),
      R => '0'
    );
\buf_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(11),
      Q => buf_out(4),
      R => '0'
    );
\buf_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(10),
      Q => buf_out(5),
      R => '0'
    );
\buf_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(9),
      Q => buf_out(6),
      R => '0'
    );
\buf_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(8),
      Q => buf_out(7),
      R => '0'
    );
\buf_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(7),
      Q => buf_out(8),
      R => '0'
    );
\buf_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => spi_data_out(6),
      Q => buf_out(9),
      R => '0'
    );
\position[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      O => p_0_in(0)
    );
\position[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \position_reg[0]__0_n_0\,
      I1 => \position_reg[1]__0_n_0\,
      O => p_0_in(1)
    );
\position[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \position_reg[2]__0_n_0\,
      I1 => \position_reg[0]__0_n_0\,
      I2 => \position_reg[1]__0_n_0\,
      O => p_0_in(2)
    );
\position[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \position_reg[3]__0_n_0\,
      I1 => \position_reg[0]__0_n_0\,
      I2 => \position_reg[1]__0_n_0\,
      I3 => \position_reg[2]__0_n_0\,
      O => p_0_in(3)
    );
\position_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_sclk,
      CE => spi_miso_i_1_n_0,
      D => p_0_in(0),
      Q => position_reg(0),
      R => '0'
    );
\position_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => position_reg(0),
      Q => \position_reg[0]__0_n_0\,
      R => spi_ss_n
    );
\position_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_sclk,
      CE => spi_miso_i_1_n_0,
      D => p_0_in(1),
      Q => position_reg(1),
      R => '0'
    );
\position_reg[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => position_reg(1),
      Q => \position_reg[1]__0_n_0\,
      R => spi_ss_n
    );
\position_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_sclk,
      CE => spi_miso_i_1_n_0,
      D => p_0_in(2),
      Q => position_reg(2),
      R => '0'
    );
\position_reg[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => position_reg(2),
      Q => \position_reg[2]__0_n_0\,
      R => spi_ss_n
    );
\position_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_sclk,
      CE => spi_miso_i_1_n_0,
      D => p_0_in(3),
      Q => position_reg(3),
      R => '0'
    );
\position_reg[3]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => position_reg(3),
      Q => \position_reg[3]__0_n_0\,
      R => spi_ss_n
    );
\spi_data_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(15),
      Q => spi_data_in(0),
      R => '0'
    );
\spi_data_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(5),
      Q => spi_data_in(10),
      R => '0'
    );
\spi_data_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(4),
      Q => spi_data_in(11),
      R => '0'
    );
\spi_data_in_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(3),
      Q => spi_data_in(12),
      R => '0'
    );
\spi_data_in_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(2),
      Q => spi_data_in(13),
      R => '0'
    );
\spi_data_in_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(1),
      Q => spi_data_in(14),
      R => '0'
    );
\spi_data_in_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(0),
      Q => spi_data_in(15),
      R => '0'
    );
\spi_data_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(14),
      Q => spi_data_in(1),
      R => '0'
    );
\spi_data_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(13),
      Q => spi_data_in(2),
      R => '0'
    );
\spi_data_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(12),
      Q => spi_data_in(3),
      R => '0'
    );
\spi_data_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(11),
      Q => spi_data_in(4),
      R => '0'
    );
\spi_data_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(10),
      Q => spi_data_in(5),
      R => '0'
    );
\spi_data_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(9),
      Q => spi_data_in(6),
      R => '0'
    );
\spi_data_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(8),
      Q => spi_data_in(7),
      R => '0'
    );
\spi_data_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(7),
      Q => spi_data_in(8),
      R => '0'
    );
\spi_data_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_in,
      CE => spi_ss_n,
      D => buf_in(6),
      Q => spi_data_in(9),
      R => '0'
    );
spi_miso_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_ss_n,
      O => spi_miso_i_1_n_0
    );
spi_miso_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => buf_out(4),
      I1 => buf_out(2),
      I2 => \position_reg[0]__0_n_0\,
      I3 => buf_out(3),
      I4 => \position_reg[1]__0_n_0\,
      I5 => buf_out(1),
      O => spi_miso_i_5_n_0
    );
spi_miso_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => buf_out(8),
      I1 => buf_out(6),
      I2 => \position_reg[0]__0_n_0\,
      I3 => buf_out(7),
      I4 => \position_reg[1]__0_n_0\,
      I5 => buf_out(5),
      O => spi_miso_i_6_n_0
    );
spi_miso_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => buf_out(12),
      I1 => buf_out(10),
      I2 => \position_reg[0]__0_n_0\,
      I3 => buf_out(11),
      I4 => \position_reg[1]__0_n_0\,
      I5 => buf_out(9),
      O => spi_miso_i_7_n_0
    );
spi_miso_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => buf_out(0),
      I1 => buf_out(14),
      I2 => \position_reg[0]__0_n_0\,
      I3 => buf_out(15),
      I4 => \position_reg[1]__0_n_0\,
      I5 => buf_out(13),
      O => spi_miso_i_8_n_0
    );
spi_miso_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => spi_sclk,
      CE => spi_miso_i_1_n_0,
      D => spi_miso_reg_i_2_n_0,
      Q => spi_miso,
      R => '0'
    );
spi_miso_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => spi_miso_reg_i_3_n_0,
      I1 => spi_miso_reg_i_4_n_0,
      O => spi_miso_reg_i_2_n_0,
      S => \position_reg[3]__0_n_0\
    );
spi_miso_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_miso_i_5_n_0,
      I1 => spi_miso_i_6_n_0,
      O => spi_miso_reg_i_3_n_0,
      S => \position_reg[2]__0_n_0\
    );
spi_miso_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_miso_i_7_n_0,
      I1 => spi_miso_i_8_n_0,
      O => spi_miso_reg_i_4_n_0,
      S => \position_reg[2]__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_0_1 is
  port (
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SPI_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_0_1 : entity is "design_1_SPI_0_1,SPI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_SPI_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_SPI_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_SPI_0_1 : entity is "SPI,Vivado 2019.2";
end design_1_SPI_0_1;

architecture STRUCTURE of design_1_SPI_0_1 is
begin
U0: entity work.design_1_SPI_0_1_SPI
     port map (
      clk_in => clk_in,
      spi_data_in(15 downto 0) => spi_data_in(15 downto 0),
      spi_data_out(15 downto 0) => spi_data_out(15 downto 0),
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sclk => spi_sclk,
      spi_ss_n => spi_ss_n
    );
end STRUCTURE;
