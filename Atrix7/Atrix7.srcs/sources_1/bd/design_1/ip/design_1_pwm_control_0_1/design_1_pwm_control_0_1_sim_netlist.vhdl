-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Apr 14 12:33:40 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/claus/source/semesterprojekt/VHDL/claus_playground/claus_playground.srcs/sources_1/bd/design_1/ip/design_1_pwm_control_0_1/design_1_pwm_control_0_1_sim_netlist.vhdl
-- Design      : design_1_pwm_control_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_control_0_1_pwm_control is
  port (
    pwm_signal : out STD_LOGIC;
    enable : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pwm_control_0_1_pwm_control : entity is "pwm_control";
end design_1_pwm_control_0_1_pwm_control;

architecture STRUCTURE of design_1_pwm_control_0_1_pwm_control is
  signal \clk_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal clk_counter_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pwm_signal0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal pwm_signal0_carry_i_1_n_0 : STD_LOGIC;
  signal \pwm_signal0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal pwm_signal0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_n_0 : STD_LOGIC;
  signal pwm_signal0_carry_n_1 : STD_LOGIC;
  signal pwm_signal0_carry_n_2 : STD_LOGIC;
  signal pwm_signal0_carry_n_3 : STD_LOGIC;
  signal pwm_signal_i_1_n_0 : STD_LOGIC;
  signal trigger_buffer : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_pwm_signal0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_signal0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_signal0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_counter[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[8]_i_1\ : label is "soft_lutpair1";
begin
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_counter_reg(0),
      O => \p_0_in__0\(0)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => clk_counter_reg(1),
      O => \p_0_in__0\(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => clk_counter_reg(1),
      I2 => clk_counter_reg(2),
      O => \p_0_in__0\(2)
    );
\clk_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_counter_reg(1),
      I1 => clk_counter_reg(0),
      I2 => clk_counter_reg(2),
      I3 => clk_counter_reg(3),
      O => \p_0_in__0\(3)
    );
\clk_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => clk_counter_reg(2),
      I1 => clk_counter_reg(0),
      I2 => clk_counter_reg(1),
      I3 => clk_counter_reg(3),
      I4 => clk_counter_reg(4),
      O => \p_0_in__0\(4)
    );
\clk_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => clk_counter_reg(3),
      I1 => clk_counter_reg(1),
      I2 => clk_counter_reg(0),
      I3 => clk_counter_reg(2),
      I4 => clk_counter_reg(4),
      I5 => clk_counter_reg(5),
      O => \p_0_in__0\(5)
    );
\clk_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_counter[8]_i_2_n_0\,
      I1 => clk_counter_reg(6),
      O => \p_0_in__0\(6)
    );
\clk_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_counter[8]_i_2_n_0\,
      I1 => clk_counter_reg(6),
      I2 => clk_counter_reg(7),
      O => \p_0_in__0\(7)
    );
\clk_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_counter_reg(6),
      I1 => \clk_counter[8]_i_2_n_0\,
      I2 => clk_counter_reg(7),
      I3 => clk_counter_reg(8),
      O => \p_0_in__0\(8)
    );
\clk_counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => clk_counter_reg(5),
      I1 => clk_counter_reg(3),
      I2 => clk_counter_reg(1),
      I3 => clk_counter_reg(0),
      I4 => clk_counter_reg(2),
      I5 => clk_counter_reg(4),
      O => \clk_counter[8]_i_2_n_0\
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => clk_counter_reg(0),
      R => '0'
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => clk_counter_reg(1),
      R => '0'
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => clk_counter_reg(2),
      R => '0'
    );
\clk_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => clk_counter_reg(3),
      R => '0'
    );
\clk_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => clk_counter_reg(4),
      R => '0'
    );
\clk_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => clk_counter_reg(5),
      R => '0'
    );
\clk_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => clk_counter_reg(6),
      R => '0'
    );
\clk_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => clk_counter_reg(7),
      R => '0'
    );
\clk_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => clk_counter_reg(8),
      R => '0'
    );
pwm_signal0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_signal0_carry_n_0,
      CO(2) => pwm_signal0_carry_n_1,
      CO(1) => pwm_signal0_carry_n_2,
      CO(0) => pwm_signal0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_signal0_carry_i_1_n_0,
      DI(2) => pwm_signal0_carry_i_2_n_0,
      DI(1) => pwm_signal0_carry_i_3_n_0,
      DI(0) => pwm_signal0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_signal0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_signal0_carry_i_5_n_0,
      S(2) => pwm_signal0_carry_i_6_n_0,
      S(1) => pwm_signal0_carry_i_7_n_0,
      S(0) => pwm_signal0_carry_i_8_n_0
    );
\pwm_signal0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_signal0_carry_n_0,
      CO(3 downto 1) => \NLW_pwm_signal0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_0_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pwm_signal0_carry_i_1__0_n_0\,
      O(3 downto 0) => \NLW_pwm_signal0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pwm_signal0_carry_i_2__0_n_0\
    );
pwm_signal0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => clk_counter_reg(6),
      I1 => trigger_buffer(6),
      I2 => trigger_buffer(7),
      I3 => clk_counter_reg(7),
      O => pwm_signal0_carry_i_1_n_0
    );
\pwm_signal0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clk_counter_reg(8),
      I1 => trigger_buffer(8),
      O => \pwm_signal0_carry_i_1__0_n_0\
    );
pwm_signal0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => clk_counter_reg(4),
      I1 => trigger_buffer(4),
      I2 => trigger_buffer(5),
      I3 => clk_counter_reg(5),
      O => pwm_signal0_carry_i_2_n_0
    );
\pwm_signal0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => trigger_buffer(8),
      I1 => clk_counter_reg(8),
      O => \pwm_signal0_carry_i_2__0_n_0\
    );
pwm_signal0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => clk_counter_reg(2),
      I1 => trigger_buffer(2),
      I2 => trigger_buffer(3),
      I3 => clk_counter_reg(3),
      O => pwm_signal0_carry_i_3_n_0
    );
pwm_signal0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => trigger_buffer(0),
      I2 => trigger_buffer(1),
      I3 => clk_counter_reg(1),
      O => pwm_signal0_carry_i_4_n_0
    );
pwm_signal0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => clk_counter_reg(6),
      I1 => trigger_buffer(6),
      I2 => clk_counter_reg(7),
      I3 => trigger_buffer(7),
      O => pwm_signal0_carry_i_5_n_0
    );
pwm_signal0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => clk_counter_reg(4),
      I1 => trigger_buffer(4),
      I2 => clk_counter_reg(5),
      I3 => trigger_buffer(5),
      O => pwm_signal0_carry_i_6_n_0
    );
pwm_signal0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => clk_counter_reg(2),
      I1 => trigger_buffer(2),
      I2 => clk_counter_reg(3),
      I3 => trigger_buffer(3),
      O => pwm_signal0_carry_i_7_n_0
    );
pwm_signal0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => trigger_buffer(0),
      I2 => clk_counter_reg(1),
      I3 => trigger_buffer(1),
      O => pwm_signal0_carry_i_8_n_0
    );
pwm_signal_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => pwm_signal_i_1_n_0
    );
pwm_signal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => pwm_signal_i_1_n_0,
      Q => pwm_signal,
      R => '0'
    );
\trigger_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(0),
      Q => trigger_buffer(0),
      R => '0'
    );
\trigger_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(1),
      Q => trigger_buffer(1),
      R => '0'
    );
\trigger_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(2),
      Q => trigger_buffer(2),
      R => '0'
    );
\trigger_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(3),
      Q => trigger_buffer(3),
      R => '0'
    );
\trigger_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(4),
      Q => trigger_buffer(4),
      R => '0'
    );
\trigger_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(5),
      Q => trigger_buffer(5),
      R => '0'
    );
\trigger_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(6),
      Q => trigger_buffer(6),
      R => '0'
    );
\trigger_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(7),
      Q => trigger_buffer(7),
      R => '0'
    );
\trigger_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => enable,
      D => pwm_trigger(8),
      Q => trigger_buffer(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pwm_control_0_1 is
  port (
    clk_in : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pwm_control_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pwm_control_0_1 : entity is "design_1_pwm_control_0_1,pwm_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pwm_control_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pwm_control_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pwm_control_0_1 : entity is "pwm_control,Vivado 2019.2";
end design_1_pwm_control_0_1;

architecture STRUCTURE of design_1_pwm_control_0_1 is
begin
U0: entity work.design_1_pwm_control_0_1_pwm_control
     port map (
      clk_in => clk_in,
      enable => enable,
      pwm_signal => pwm_signal,
      pwm_trigger(8 downto 0) => pwm_trigger(8 downto 0)
    );
end STRUCTURE;
