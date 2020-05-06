-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 18:25:34 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_motor_controler_0_1/design_1_motor_controler_0_1_sim_netlist.vhdl
-- Design      : design_1_motor_controler_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_motor_controler_0_1_motor_controler is
  port (
    outA : out STD_LOGIC;
    outB : out STD_LOGIC;
    dir : in STD_LOGIC;
    pwm : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_motor_controler_0_1_motor_controler : entity is "motor_controler";
end design_1_motor_controler_0_1_motor_controler;

architecture STRUCTURE of design_1_motor_controler_0_1_motor_controler is
  signal outA_i_1_n_0 : STD_LOGIC;
  signal outB_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of outA_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of outB_i_1 : label is "soft_lutpair0";
begin
outA_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm,
      I1 => dir,
      O => outA_i_1_n_0
    );
outA_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => outA_i_1_n_0,
      Q => outA,
      R => '0'
    );
outB_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dir,
      I1 => pwm,
      O => outB_i_1_n_0
    );
outB_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => outB_i_1_n_0,
      Q => outB,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_motor_controler_0_1 is
  port (
    clk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    dir : in STD_LOGIC;
    outA : out STD_LOGIC;
    outB : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_motor_controler_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_motor_controler_0_1 : entity is "design_1_motor_controler_0_1,motor_controler,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_motor_controler_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_motor_controler_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_motor_controler_0_1 : entity is "motor_controler,Vivado 2019.2";
end design_1_motor_controler_0_1;

architecture STRUCTURE of design_1_motor_controler_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.design_1_motor_controler_0_1_motor_controler
     port map (
      clk => clk,
      dir => dir,
      outA => outA,
      outB => outB,
      pwm => pwm
    );
end STRUCTURE;
