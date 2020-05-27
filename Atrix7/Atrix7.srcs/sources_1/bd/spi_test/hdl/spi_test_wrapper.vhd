--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri May 15 09:28:03 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target spi_test_wrapper.bd
--Design      : spi_test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_test_wrapper is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
end spi_test_wrapper;

architecture STRUCTURE of spi_test_wrapper is
  component spi_test is
  port (
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    ss : in STD_LOGIC;
    miso : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component spi_test;
begin
spi_test_i: component spi_test
     port map (
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      miso => miso,
      mosi => mosi,
      sclk => sclk,
      ss => ss
    );
end STRUCTURE;
