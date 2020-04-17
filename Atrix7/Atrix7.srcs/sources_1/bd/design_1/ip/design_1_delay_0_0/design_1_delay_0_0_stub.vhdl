-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Apr 15 14:27:03 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/claus/source/semesterprojekt/VHDL/claus_playground/claus_playground.srcs/sources_1/bd/design_1/ip/design_1_delay_0_0/design_1_delay_0_0_stub.vhdl
-- Design      : design_1_delay_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_delay_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 8 downto 0 );
    output : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end design_1_delay_0_0;

architecture stub of design_1_delay_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,input[8:0],output[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "delay,Vivado 2019.2";
begin
end;
