-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 22:56:38 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_state_machine_0_0_sim_netlist.vhdl
-- Design      : design_1_state_machine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine is
  port (
    motor_ctrl_A : out STD_LOGIC;
    motor_ctrl_B : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    frame_choice : in STD_LOGIC;
    motor_choice : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    index_ctrl_B : in STD_LOGIC;
    quad_enc_B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    index_ctrl_A : in STD_LOGIC;
    request_type : in STD_LOGIC;
    quad_enc_A : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine is
  signal \data_out[14]_i_1_n_0\ : STD_LOGIC;
  signal data_out_0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal motor_ctrl_A_i_1_n_0 : STD_LOGIC;
  signal motor_ctrl_B_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of motor_ctrl_A_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of motor_ctrl_B_i_1 : label is "soft_lutpair0";
begin
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => index_ctrl_B,
      I1 => quad_enc_B(0),
      I2 => motor_choice,
      I3 => index_ctrl_A,
      I4 => request_type,
      I5 => quad_enc_A(0),
      O => data_out_0(0)
    );
\data_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(10),
      I1 => motor_choice,
      I2 => quad_enc_A(10),
      I3 => request_type,
      O => data_out_0(10)
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(11),
      I1 => motor_choice,
      I2 => quad_enc_A(11),
      I3 => request_type,
      O => data_out_0(11)
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(12),
      I1 => motor_choice,
      I2 => quad_enc_A(12),
      I3 => request_type,
      O => data_out_0(12)
    );
\data_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(13),
      I1 => motor_choice,
      I2 => quad_enc_A(13),
      I3 => request_type,
      O => data_out_0(13)
    );
\data_out[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_choice,
      O => \data_out[14]_i_1_n_0\
    );
\data_out[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(14),
      I1 => motor_choice,
      I2 => quad_enc_A(14),
      I3 => request_type,
      O => data_out_0(14)
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(1),
      I1 => motor_choice,
      I2 => quad_enc_A(1),
      I3 => request_type,
      O => data_out_0(1)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(2),
      I1 => motor_choice,
      I2 => quad_enc_A(2),
      I3 => request_type,
      O => data_out_0(2)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(3),
      I1 => motor_choice,
      I2 => quad_enc_A(3),
      I3 => request_type,
      O => data_out_0(3)
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(4),
      I1 => motor_choice,
      I2 => quad_enc_A(4),
      I3 => request_type,
      O => data_out_0(4)
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(5),
      I1 => motor_choice,
      I2 => quad_enc_A(5),
      I3 => request_type,
      O => data_out_0(5)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(6),
      I1 => motor_choice,
      I2 => quad_enc_A(6),
      I3 => request_type,
      O => data_out_0(6)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(7),
      I1 => motor_choice,
      I2 => quad_enc_A(7),
      I3 => request_type,
      O => data_out_0(7)
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(8),
      I1 => motor_choice,
      I2 => quad_enc_A(8),
      I3 => request_type,
      O => data_out_0(8)
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => quad_enc_B(9),
      I1 => motor_choice,
      I2 => quad_enc_A(9),
      I3 => request_type,
      O => data_out_0(9)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(0),
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(10),
      Q => data_out(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(11),
      Q => data_out(11),
      R => '0'
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(12),
      Q => data_out(12),
      R => '0'
    );
\data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(13),
      Q => data_out(13),
      R => '0'
    );
\data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(14),
      Q => data_out(14),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(1),
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(2),
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(3),
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(4),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(5),
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(6),
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(7),
      Q => data_out(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(8),
      Q => data_out(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \data_out[14]_i_1_n_0\,
      D => data_out_0(9),
      Q => data_out(9),
      R => '0'
    );
motor_ctrl_A_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_choice,
      I1 => motor_choice,
      O => motor_ctrl_A_i_1_n_0
    );
motor_ctrl_A_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => motor_ctrl_A_i_1_n_0,
      Q => motor_ctrl_A,
      R => '0'
    );
motor_ctrl_B_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => motor_choice,
      I1 => frame_choice,
      O => motor_ctrl_B_i_1_n_0
    );
motor_ctrl_B_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => motor_ctrl_B_i_1_n_0,
      Q => motor_ctrl_B,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_in : in STD_LOGIC;
    frame_choice : in STD_LOGIC;
    motor_choice : in STD_LOGIC;
    request_type : in STD_LOGIC;
    parity_check : in STD_LOGIC;
    motor_ctrl_A : out STD_LOGIC;
    motor_ctrl_B : out STD_LOGIC;
    quad_enc_A : in STD_LOGIC_VECTOR ( 14 downto 0 );
    quad_enc_B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    index_ctrl_A : in STD_LOGIC;
    index_ctrl_B : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_state_machine_0_0,state_machine,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "state_machine,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_state_machine
     port map (
      clk_in => clk_in,
      data_out(14 downto 0) => data_out(14 downto 0),
      frame_choice => frame_choice,
      index_ctrl_A => index_ctrl_A,
      index_ctrl_B => index_ctrl_B,
      motor_choice => motor_choice,
      motor_ctrl_A => motor_ctrl_A,
      motor_ctrl_B => motor_ctrl_B,
      quad_enc_A(14 downto 0) => quad_enc_A(14 downto 0),
      quad_enc_B(14 downto 0) => quad_enc_B(14 downto 0),
      request_type => request_type
    );
end STRUCTURE;
