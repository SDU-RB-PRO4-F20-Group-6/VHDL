--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 17 18:48:58 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target robot_simulation_wrapper.bd
--Design      : robot_simulation_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity robot_simulation_wrapper is
  port (
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btnD : in STD_LOGIC;
    btnU : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
end robot_simulation_wrapper;

architecture STRUCTURE of robot_simulation_wrapper is
  component robot_simulation is
  port (
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    ss : in STD_LOGIC;
    miso : out STD_LOGIC;
    btnU : in STD_LOGIC;
    btnD : in STD_LOGIC;
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component robot_simulation;
begin
robot_simulation_i: component robot_simulation
     port map (
      JB(7 downto 0) => JB(7 downto 0),
      JC(7 downto 0) => JC(7 downto 0),
      btnD => btnD,
      btnU => btnU,
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      miso => miso,
      mosi => mosi,
      sclk => sclk,
      ss => ss
    );
end STRUCTURE;
