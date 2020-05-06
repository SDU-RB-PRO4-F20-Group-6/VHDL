-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 14:27:32 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_quadratur_decoder_0_4_sim_netlist.vhdl
-- Design      : design_1_quadratur_decoder_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadratur_decoder is
  port (
    value : out STD_LOGIC_VECTOR ( 14 downto 0 );
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_in : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadratur_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadratur_decoder is
  signal \_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_i_4_n_0\ : STD_LOGIC;
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal debounce_counter_B : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal debounce_counter_B1 : STD_LOGIC;
  signal \debounce_counter_B[0]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[14]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[16]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[17]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[18]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[19]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[1]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[2]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[3]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[4]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[5]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B[9]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_counter_B_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \debounce_counter_B_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \debounce_counter_B_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \debounce_counter_B_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_counter_B_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \debounce_counter_B_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \debounce_counter_B_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \debounce_counter_B_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \debounce_counter_B_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal position : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \position[14]_i_10_n_0\ : STD_LOGIC;
  signal \position[14]_i_11_n_0\ : STD_LOGIC;
  signal \position[14]_i_12_n_0\ : STD_LOGIC;
  signal \position[14]_i_13_n_0\ : STD_LOGIC;
  signal \position[14]_i_14_n_0\ : STD_LOGIC;
  signal \position[14]_i_1_n_0\ : STD_LOGIC;
  signal \position[14]_i_3_n_0\ : STD_LOGIC;
  signal \position[14]_i_4_n_0\ : STD_LOGIC;
  signal \position[14]_i_5_n_0\ : STD_LOGIC;
  signal \position[14]_i_6_n_0\ : STD_LOGIC;
  signal \position[14]_i_7_n_0\ : STD_LOGIC;
  signal \position[14]_i_8_n_0\ : STD_LOGIC;
  signal \position[14]_i_9_n_0\ : STD_LOGIC;
  signal position_0 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \position_reg_n_0_[0]\ : STD_LOGIC;
  signal \position_reg_n_0_[10]\ : STD_LOGIC;
  signal \position_reg_n_0_[11]\ : STD_LOGIC;
  signal \position_reg_n_0_[12]\ : STD_LOGIC;
  signal \position_reg_n_0_[13]\ : STD_LOGIC;
  signal \position_reg_n_0_[14]\ : STD_LOGIC;
  signal \position_reg_n_0_[1]\ : STD_LOGIC;
  signal \position_reg_n_0_[2]\ : STD_LOGIC;
  signal \position_reg_n_0_[3]\ : STD_LOGIC;
  signal \position_reg_n_0_[4]\ : STD_LOGIC;
  signal \position_reg_n_0_[5]\ : STD_LOGIC;
  signal \position_reg_n_0_[6]\ : STD_LOGIC;
  signal \position_reg_n_0_[7]\ : STD_LOGIC;
  signal \position_reg_n_0_[8]\ : STD_LOGIC;
  signal \position_reg_n_0_[9]\ : STD_LOGIC;
  signal preposition : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_debounce_counter_B_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_debounce_counter_B_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \debounce_counter_B[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \debounce_counter_B[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \debounce_counter_B[16]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debounce_counter_B[17]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debounce_counter_B[18]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debounce_counter_B[19]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debounce_counter_B[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \debounce_counter_B[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \debounce_counter_B[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \debounce_counter_B[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \debounce_counter_B[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \debounce_counter_B[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \position[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \position[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \position[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \position[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \position[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \position[14]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \position[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \position[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \position[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \position[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \position[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \position[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \position[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \position[9]_i_1\ : label is "soft_lutpair7";
begin
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => \position_reg_n_0_[0]\,
      DI(3) => \position_reg_n_0_[3]\,
      DI(2) => \position_reg_n_0_[2]\,
      DI(1) => \position_reg_n_0_[1]\,
      DI(0) => \_carry_i_1_n_0\,
      O(3 downto 0) => position(4 downto 1),
      S(3) => \_carry_i_2_n_0\,
      S(2) => \_carry_i_3_n_0\,
      S(1) => \_carry_i_4_n_0\,
      S(0) => \_carry_i_5_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \position_reg_n_0_[7]\,
      DI(2) => \position_reg_n_0_[6]\,
      DI(1) => \position_reg_n_0_[5]\,
      DI(0) => \position_reg_n_0_[4]\,
      O(3 downto 0) => position(8 downto 5),
      S(3) => \_carry__0_i_1_n_0\,
      S(2) => \_carry__0_i_2_n_0\,
      S(1) => \_carry__0_i_3_n_0\,
      S(0) => \_carry__0_i_4_n_0\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[7]\,
      I1 => \position_reg_n_0_[8]\,
      O => \_carry__0_i_1_n_0\
    );
\_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[6]\,
      I1 => \position_reg_n_0_[7]\,
      O => \_carry__0_i_2_n_0\
    );
\_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[5]\,
      I1 => \position_reg_n_0_[6]\,
      O => \_carry__0_i_3_n_0\
    );
\_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[4]\,
      I1 => \position_reg_n_0_[5]\,
      O => \_carry__0_i_4_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \position_reg_n_0_[11]\,
      DI(2) => \position_reg_n_0_[10]\,
      DI(1) => \position_reg_n_0_[9]\,
      DI(0) => \position_reg_n_0_[8]\,
      O(3 downto 0) => position(12 downto 9),
      S(3) => \_carry__1_i_1_n_0\,
      S(2) => \_carry__1_i_2_n_0\,
      S(1) => \_carry__1_i_3_n_0\,
      S(0) => \_carry__1_i_4_n_0\
    );
\_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[11]\,
      I1 => \position_reg_n_0_[12]\,
      O => \_carry__1_i_1_n_0\
    );
\_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[10]\,
      I1 => \position_reg_n_0_[11]\,
      O => \_carry__1_i_2_n_0\
    );
\_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[9]\,
      I1 => \position_reg_n_0_[10]\,
      O => \_carry__1_i_3_n_0\
    );
\_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[8]\,
      I1 => \position_reg_n_0_[9]\,
      O => \_carry__1_i_4_n_0\
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3 downto 1) => \NLW__carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \position_reg_n_0_[12]\,
      O(3 downto 2) => \NLW__carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => position(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \_carry__2_i_1_n_0\,
      S(0) => \_carry__2_i_2_n_0\
    );
\_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[13]\,
      I1 => \position_reg_n_0_[14]\,
      O => \_carry__2_i_1_n_0\
    );
\_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[12]\,
      I1 => \position_reg_n_0_[13]\,
      O => \_carry__2_i_2_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \position_reg_n_0_[1]\,
      O => \_carry_i_1_n_0\
    );
\_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[3]\,
      I1 => \position_reg_n_0_[4]\,
      O => \_carry_i_2_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[2]\,
      I1 => \position_reg_n_0_[3]\,
      O => \_carry_i_3_n_0\
    );
\_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \position_reg_n_0_[1]\,
      I1 => \position_reg_n_0_[2]\,
      O => \_carry_i_4_n_0\
    );
\_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \position_reg_n_0_[1]\,
      I1 => preposition(0),
      I2 => encoder(1),
      O => \_carry_i_5_n_0\
    );
\debounce_counter_B[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => debounce_counter_B(0),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[0]_i_1_n_0\
    );
\debounce_counter_B[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(14),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[14]_i_1_n_0\
    );
\debounce_counter_B[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => encoder(1),
      I1 => preposition(1),
      O => debounce_counter_B1
    );
\debounce_counter_B[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(16),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[16]_i_1_n_0\
    );
\debounce_counter_B[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(17),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[17]_i_1_n_0\
    );
\debounce_counter_B[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(18),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[18]_i_1_n_0\
    );
\debounce_counter_B[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(19),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[19]_i_1_n_0\
    );
\debounce_counter_B[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(1),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[1]_i_1_n_0\
    );
\debounce_counter_B[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(2),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[2]_i_1_n_0\
    );
\debounce_counter_B[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(3),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[3]_i_1_n_0\
    );
\debounce_counter_B[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(4),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[4]_i_1_n_0\
    );
\debounce_counter_B[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(5),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[5]_i_1_n_0\
    );
\debounce_counter_B[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_2_in(9),
      I1 => preposition(1),
      I2 => encoder(1),
      O => \debounce_counter_B[9]_i_1_n_0\
    );
\debounce_counter_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[0]_i_1_n_0\,
      Q => debounce_counter_B(0),
      R => '0'
    );
\debounce_counter_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(10),
      Q => debounce_counter_B(10),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(11),
      Q => debounce_counter_B(11),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(12),
      Q => debounce_counter_B(12),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_counter_B_reg[8]_i_1_n_0\,
      CO(3) => \debounce_counter_B_reg[12]_i_1_n_0\,
      CO(2) => \debounce_counter_B_reg[12]_i_1_n_1\,
      CO(1) => \debounce_counter_B_reg[12]_i_1_n_2\,
      CO(0) => \debounce_counter_B_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(12 downto 9),
      S(3 downto 0) => debounce_counter_B(12 downto 9)
    );
\debounce_counter_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(13),
      Q => debounce_counter_B(13),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[14]_i_1_n_0\,
      Q => debounce_counter_B(14),
      R => '0'
    );
\debounce_counter_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(15),
      Q => debounce_counter_B(15),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_counter_B_reg[12]_i_1_n_0\,
      CO(3) => \debounce_counter_B_reg[15]_i_2_n_0\,
      CO(2) => \debounce_counter_B_reg[15]_i_2_n_1\,
      CO(1) => \debounce_counter_B_reg[15]_i_2_n_2\,
      CO(0) => \debounce_counter_B_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(16 downto 13),
      S(3 downto 0) => debounce_counter_B(16 downto 13)
    );
\debounce_counter_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[16]_i_1_n_0\,
      Q => debounce_counter_B(16),
      R => '0'
    );
\debounce_counter_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[17]_i_1_n_0\,
      Q => debounce_counter_B(17),
      R => '0'
    );
\debounce_counter_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[18]_i_1_n_0\,
      Q => debounce_counter_B(18),
      R => '0'
    );
\debounce_counter_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[19]_i_1_n_0\,
      Q => debounce_counter_B(19),
      R => '0'
    );
\debounce_counter_B_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_counter_B_reg[15]_i_2_n_0\,
      CO(3 downto 2) => \NLW_debounce_counter_B_reg[19]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \debounce_counter_B_reg[19]_i_2_n_2\,
      CO(0) => \debounce_counter_B_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_debounce_counter_B_reg[19]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_2_in(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => debounce_counter_B(19 downto 17)
    );
\debounce_counter_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[1]_i_1_n_0\,
      Q => debounce_counter_B(1),
      R => '0'
    );
\debounce_counter_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[2]_i_1_n_0\,
      Q => debounce_counter_B(2),
      R => '0'
    );
\debounce_counter_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[3]_i_1_n_0\,
      Q => debounce_counter_B(3),
      R => '0'
    );
\debounce_counter_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[4]_i_1_n_0\,
      Q => debounce_counter_B(4),
      R => '0'
    );
\debounce_counter_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[5]_i_1_n_0\,
      Q => debounce_counter_B(5),
      R => '0'
    );
\debounce_counter_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(6),
      Q => debounce_counter_B(6),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(7),
      Q => debounce_counter_B(7),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_2_in(8),
      Q => debounce_counter_B(8),
      R => debounce_counter_B1
    );
\debounce_counter_B_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \debounce_counter_B_reg[8]_i_2_n_0\,
      CO(3) => \debounce_counter_B_reg[8]_i_1_n_0\,
      CO(2) => \debounce_counter_B_reg[8]_i_1_n_1\,
      CO(1) => \debounce_counter_B_reg[8]_i_1_n_2\,
      CO(0) => \debounce_counter_B_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(8 downto 5),
      S(3 downto 0) => debounce_counter_B(8 downto 5)
    );
\debounce_counter_B_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \debounce_counter_B_reg[8]_i_2_n_0\,
      CO(2) => \debounce_counter_B_reg[8]_i_2_n_1\,
      CO(1) => \debounce_counter_B_reg[8]_i_2_n_2\,
      CO(0) => \debounce_counter_B_reg[8]_i_2_n_3\,
      CYINIT => debounce_counter_B(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(4 downto 1),
      S(3 downto 0) => debounce_counter_B(4 downto 1)
    );
\debounce_counter_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \debounce_counter_B[9]_i_1_n_0\,
      Q => debounce_counter_B(9),
      R => '0'
    );
\position[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => \position_reg_n_0_[0]\,
      O => position_0(0)
    );
\position[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(10),
      O => position_0(10)
    );
\position[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(11),
      O => position_0(11)
    );
\position[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(12),
      O => position_0(12)
    );
\position[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(13),
      O => position_0(13)
    );
\position[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEFAAAA"
    )
        port map (
      I0 => debounce_counter_B(19),
      I1 => \position[14]_i_3_n_0\,
      I2 => \position[14]_i_4_n_0\,
      I3 => \position[14]_i_5_n_0\,
      I4 => debounce_counter_B(18),
      I5 => \position[14]_i_6_n_0\,
      O => \position[14]_i_1_n_0\
    );
\position[14]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => debounce_counter_B(6),
      I1 => debounce_counter_B(4),
      I2 => debounce_counter_B(5),
      O => \position[14]_i_10_n_0\
    );
\position[14]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => debounce_counter_B(8),
      I1 => debounce_counter_B(7),
      O => \position[14]_i_11_n_0\
    );
\position[14]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \position_reg_n_0_[4]\,
      I1 => \position_reg_n_0_[5]\,
      I2 => \position_reg_n_0_[6]\,
      I3 => \position_reg_n_0_[7]\,
      I4 => \position_reg_n_0_[8]\,
      O => \position[14]_i_12_n_0\
    );
\position[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \position_reg_n_0_[14]\,
      I1 => \position_reg_n_0_[13]\,
      I2 => \position_reg_n_0_[9]\,
      I3 => \position_reg_n_0_[10]\,
      I4 => \position_reg_n_0_[11]\,
      I5 => \position_reg_n_0_[12]\,
      O => \position[14]_i_13_n_0\
    );
\position[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \position_reg_n_0_[7]\,
      I1 => \position_reg_n_0_[6]\,
      I2 => \position_reg_n_0_[1]\,
      I3 => \position_reg_n_0_[8]\,
      I4 => \position_reg_n_0_[3]\,
      I5 => \position_reg_n_0_[0]\,
      O => \position[14]_i_14_n_0\
    );
\position[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \position[14]_i_7_n_0\,
      I1 => position(14),
      I2 => \position[14]_i_8_n_0\,
      O => position_0(14)
    );
\position[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => debounce_counter_B(17),
      I1 => debounce_counter_B(16),
      O => \position[14]_i_3_n_0\
    );
\position[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FF57"
    )
        port map (
      I0 => debounce_counter_B(10),
      I1 => \position[14]_i_9_n_0\,
      I2 => \position[14]_i_10_n_0\,
      I3 => \position[14]_i_11_n_0\,
      I4 => debounce_counter_B(9),
      I5 => debounce_counter_B(11),
      O => \position[14]_i_4_n_0\
    );
\position[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => debounce_counter_B(12),
      I1 => debounce_counter_B(13),
      I2 => debounce_counter_B(14),
      I3 => debounce_counter_B(15),
      O => \position[14]_i_5_n_0\
    );
\position[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669966984219669"
    )
        port map (
      I0 => preposition(1),
      I1 => preposition(0),
      I2 => encoder(1),
      I3 => encoder(0),
      I4 => \position[14]_i_12_n_0\,
      I5 => \position[14]_i_13_n_0\,
      O => \position[14]_i_6_n_0\
    );
\position[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEEA"
    )
        port map (
      I0 => \position_reg_n_0_[8]\,
      I1 => \position_reg_n_0_[7]\,
      I2 => \position_reg_n_0_[6]\,
      I3 => \position_reg_n_0_[5]\,
      I4 => \position_reg_n_0_[4]\,
      I5 => \position[14]_i_13_n_0\,
      O => \position[14]_i_7_n_0\
    );
\position[14]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \position[14]_i_13_n_0\,
      I1 => \position[14]_i_14_n_0\,
      I2 => \position_reg_n_0_[5]\,
      I3 => \position_reg_n_0_[4]\,
      I4 => \position_reg_n_0_[2]\,
      O => \position[14]_i_8_n_0\
    );
\position[14]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => debounce_counter_B(3),
      I1 => debounce_counter_B(0),
      I2 => debounce_counter_B(2),
      I3 => debounce_counter_B(1),
      O => \position[14]_i_9_n_0\
    );
\position[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(1),
      O => position_0(1)
    );
\position[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(2),
      O => position_0(2)
    );
\position[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(3),
      O => position_0(3)
    );
\position[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => position(4),
      I1 => \position[14]_i_7_n_0\,
      O => position_0(4)
    );
\position[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => position(5),
      I1 => \position[14]_i_7_n_0\,
      O => position_0(5)
    );
\position[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => position(6),
      I1 => \position[14]_i_7_n_0\,
      O => position_0(6)
    );
\position[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(7),
      O => position_0(7)
    );
\position[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => position(8),
      I1 => \position[14]_i_7_n_0\,
      O => position_0(8)
    );
\position[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \position[14]_i_8_n_0\,
      I1 => \position[14]_i_7_n_0\,
      I2 => position(9),
      O => position_0(9)
    );
\position_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(0),
      Q => \position_reg_n_0_[0]\,
      R => reset
    );
\position_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(10),
      Q => \position_reg_n_0_[10]\,
      R => reset
    );
\position_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(11),
      Q => \position_reg_n_0_[11]\,
      R => reset
    );
\position_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(12),
      Q => \position_reg_n_0_[12]\,
      R => reset
    );
\position_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(13),
      Q => \position_reg_n_0_[13]\,
      R => reset
    );
\position_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(14),
      Q => \position_reg_n_0_[14]\,
      R => reset
    );
\position_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(1),
      Q => \position_reg_n_0_[1]\,
      R => reset
    );
\position_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(2),
      Q => \position_reg_n_0_[2]\,
      R => reset
    );
\position_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(3),
      Q => \position_reg_n_0_[3]\,
      R => reset
    );
\position_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(4),
      Q => \position_reg_n_0_[4]\,
      R => reset
    );
\position_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(5),
      Q => \position_reg_n_0_[5]\,
      R => reset
    );
\position_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(6),
      Q => \position_reg_n_0_[6]\,
      R => reset
    );
\position_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(7),
      Q => \position_reg_n_0_[7]\,
      R => reset
    );
\position_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(8),
      Q => \position_reg_n_0_[8]\,
      R => reset
    );
\position_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in,
      CE => \position[14]_i_1_n_0\,
      D => position_0(9),
      Q => \position_reg_n_0_[9]\,
      R => reset
    );
\preposition_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => encoder(0),
      Q => preposition(0),
      R => '0'
    );
\preposition_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => encoder(1),
      Q => preposition(1),
      R => '0'
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[0]\,
      Q => value(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[10]\,
      Q => value(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[11]\,
      Q => value(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[12]\,
      Q => value(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[13]\,
      Q => value(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[14]\,
      Q => value(14),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[1]\,
      Q => value(1),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[2]\,
      Q => value(2),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[3]\,
      Q => value(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[4]\,
      Q => value(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[5]\,
      Q => value(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[6]\,
      Q => value(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[7]\,
      Q => value(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[8]\,
      Q => value(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \position_reg_n_0_[9]\,
      Q => value(9),
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
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_quadratur_decoder_0_4,quadratur_decoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "quadratur_decoder,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_quadratur_decoder
     port map (
      clk_in => clk_in,
      encoder(1 downto 0) => encoder(1 downto 0),
      reset => reset,
      value(14 downto 0) => value(14 downto 0)
    );
end STRUCTURE;
