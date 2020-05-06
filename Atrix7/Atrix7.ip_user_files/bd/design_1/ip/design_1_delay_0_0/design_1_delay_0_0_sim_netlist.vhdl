-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Apr 15 14:27:03 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/claus/source/semesterprojekt/VHDL/claus_playground/claus_playground.srcs/sources_1/bd/design_1/ip/design_1_delay_0_0/design_1_delay_0_0_sim_netlist.vhdl
-- Design      : design_1_delay_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_delay_0_0_delay is
  port (
    output : out STD_LOGIC_VECTOR ( 8 downto 0 );
    input : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_delay_0_0_delay : entity is "delay";
end design_1_delay_0_0_delay;

architecture STRUCTURE of design_1_delay_0_0_delay is
  signal counter : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal preValue : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_counter1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_counter1_carry_CO_UNCONNECTED(3),
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => counter1_carry_i_1_n_0,
      S(1) => counter1_carry_i_2_n_0,
      S(0) => counter1_carry_i_3_n_0
    );
counter1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => preValue(6),
      I1 => input(6),
      I2 => input(8),
      I3 => preValue(8),
      I4 => input(7),
      I5 => preValue(7),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => preValue(3),
      I1 => input(3),
      I2 => input(5),
      I3 => preValue(5),
      I4 => input(4),
      I5 => preValue(4),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => preValue(0),
      I1 => input(0),
      I2 => input(2),
      I3 => preValue(2),
      I4 => input(1),
      I5 => preValue(1),
      O => counter1_carry_i_3_n_0
    );
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
\output[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => counter1_carry_n_1,
      O => counter
    );
\output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(0),
      Q => output(0),
      R => '0'
    );
\output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(1),
      Q => output(1),
      R => '0'
    );
\output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(2),
      Q => output(2),
      R => '0'
    );
\output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(3),
      Q => output(3),
      R => '0'
    );
\output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(4),
      Q => output(4),
      R => '0'
    );
\output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(5),
      Q => output(5),
      R => '0'
    );
\output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(6),
      Q => output(6),
      R => '0'
    );
\output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(7),
      Q => output(7),
      R => '0'
    );
\output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter,
      D => input(8),
      Q => output(8),
      R => '0'
    );
\preValue_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(0),
      Q => preValue(0),
      R => '0'
    );
\preValue_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(1),
      Q => preValue(1),
      R => '0'
    );
\preValue_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(2),
      Q => preValue(2),
      R => '0'
    );
\preValue_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(3),
      Q => preValue(3),
      R => '0'
    );
\preValue_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(4),
      Q => preValue(4),
      R => '0'
    );
\preValue_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(5),
      Q => preValue(5),
      R => '0'
    );
\preValue_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(6),
      Q => preValue(6),
      R => '0'
    );
\preValue_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(7),
      Q => preValue(7),
      R => '0'
    );
\preValue_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => counter1_carry_n_1,
      D => input(8),
      Q => preValue(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_delay_0_0 is
  port (
    clk_in : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 8 downto 0 );
    output : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_delay_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_delay_0_0 : entity is "design_1_delay_0_0,delay,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_delay_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_delay_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_delay_0_0 : entity is "delay,Vivado 2019.2";
end design_1_delay_0_0;

architecture STRUCTURE of design_1_delay_0_0 is
begin
U0: entity work.design_1_delay_0_0_delay
     port map (
      clk_in => clk_in,
      input(8 downto 0) => input(8 downto 0),
      output(8 downto 0) => output(8 downto 0)
    );
end STRUCTURE;
