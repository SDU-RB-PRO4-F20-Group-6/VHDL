-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 17 18:30:48 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/robot_simulation/ip/robot_simulation_Evenparity_0_0/robot_simulation_Evenparity_0_0_sim_netlist.vhdl
-- Design      : robot_simulation_Evenparity_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity robot_simulation_Evenparity_0_0_Evenparity is
  port (
    parity : out STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of robot_simulation_Evenparity_0_0_Evenparity : entity is "Evenparity";
end robot_simulation_Evenparity_0_0_Evenparity;

architecture STRUCTURE of robot_simulation_Evenparity_0_0_Evenparity is
  signal parity_INST_0_i_1_n_0 : STD_LOGIC;
  signal parity_INST_0_i_2_n_0 : STD_LOGIC;
begin
parity_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => parity_INST_0_i_1_n_0,
      I1 => parity_INST_0_i_2_n_0,
      I2 => data(14),
      I3 => data(12),
      I4 => data(13),
      O => parity
    );
parity_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(1),
      I1 => data(3),
      I2 => data(6),
      I3 => data(7),
      I4 => data(4),
      I5 => data(5),
      O => parity_INST_0_i_1_n_0
    );
parity_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(10),
      I1 => data(0),
      I2 => data(9),
      I3 => data(2),
      I4 => data(11),
      I5 => data(8),
      O => parity_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity robot_simulation_Evenparity_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    parity : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of robot_simulation_Evenparity_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of robot_simulation_Evenparity_0_0 : entity is "robot_simulation_Evenparity_0_0,Evenparity,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of robot_simulation_Evenparity_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of robot_simulation_Evenparity_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of robot_simulation_Evenparity_0_0 : entity is "Evenparity,Vivado 2019.2";
end robot_simulation_Evenparity_0_0;

architecture STRUCTURE of robot_simulation_Evenparity_0_0 is
begin
U0: entity work.robot_simulation_Evenparity_0_0_Evenparity
     port map (
      data(14 downto 0) => data(14 downto 0),
      parity => parity
    );
end STRUCTURE;
