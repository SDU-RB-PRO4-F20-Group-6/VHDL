-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 11:42:45 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_enable_0_0/design_1_enable_0_0_sim_netlist.vhdl
-- Design      : design_1_enable_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_enable_0_0_enable is
  port (
    ou : out STD_LOGIC;
    clk : in STD_LOGIC;
    sig : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_enable_0_0_enable : entity is "enable";
end design_1_enable_0_0_enable;

architecture STRUCTURE of design_1_enable_0_0_enable is
  signal sig_buffer : STD_LOGIC;
  signal sig_buffer_i_1_n_0 : STD_LOGIC;
begin
ou_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sig_buffer,
      Q => ou,
      R => '0'
    );
sig_buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sig,
      I1 => en,
      I2 => sig_buffer,
      O => sig_buffer_i_1_n_0
    );
sig_buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sig_buffer_i_1_n_0,
      Q => sig_buffer,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_enable_0_0 is
  port (
    clk : in STD_LOGIC;
    sig : in STD_LOGIC;
    en : in STD_LOGIC;
    ou : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_enable_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_enable_0_0 : entity is "design_1_enable_0_0,enable,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_enable_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_enable_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_enable_0_0 : entity is "enable,Vivado 2019.2";
end design_1_enable_0_0;

architecture STRUCTURE of design_1_enable_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_enable_0_0_enable
     port map (
      clk => clk,
      en => en,
      ou => ou,
      sig => sig
    );
end STRUCTURE;
