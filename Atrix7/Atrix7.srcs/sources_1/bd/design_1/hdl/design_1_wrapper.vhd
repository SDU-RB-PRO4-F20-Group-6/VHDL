--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed May 27 15:17:25 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    ss : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    btnC : in STD_LOGIC;
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      JB(7 downto 0) => JB(7 downto 0),
      JC(7 downto 0) => JC(7 downto 0),
      btnC => btnC,
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      miso => miso,
      mosi => mosi,
      sclk => sclk,
      ss => ss
    );
end STRUCTURE;
