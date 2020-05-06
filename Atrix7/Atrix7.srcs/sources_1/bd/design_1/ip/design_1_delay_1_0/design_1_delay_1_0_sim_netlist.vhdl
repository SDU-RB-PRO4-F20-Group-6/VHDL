-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 11:41:08 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_delay_1_0/design_1_delay_1_0_sim_netlist.vhdl
-- Design      : design_1_delay_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_delay_1_0_delay is
  port (
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_delay_1_0_delay : entity is "delay";
end design_1_delay_1_0_delay;

architecture STRUCTURE of design_1_delay_1_0_delay is
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal preValue : STD_LOGIC;
  signal \^signal_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \signal_out[0]_i_1_n_0\ : STD_LOGIC;
begin
  signal_out(0) <= \^signal_out\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => '1',
      D => '1',
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\preValue_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => signal_in(0),
      Q => preValue,
      R => '0'
    );
\signal_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => preValue,
      I2 => signal_in(0),
      I3 => \^signal_out\(0),
      O => \signal_out[0]_i_1_n_0\
    );
\signal_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \signal_out[0]_i_1_n_0\,
      Q => \^signal_out\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_delay_1_0 is
  port (
    clk_in : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_delay_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_delay_1_0 : entity is "design_1_delay_1_0,delay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_delay_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_delay_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_delay_1_0 : entity is "delay,Vivado 2019.2";
end design_1_delay_1_0;

architecture STRUCTURE of design_1_delay_1_0 is
begin
U0: entity work.design_1_delay_1_0_delay
     port map (
      clk_in => clk_in,
      signal_in(0) => signal_in(0),
      signal_out(0) => signal_out(0)
    );
end STRUCTURE;
