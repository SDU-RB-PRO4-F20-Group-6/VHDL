-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 17 18:30:48 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/robot_simulation/ip/robot_simulation_quadratur_decoder_0_0/robot_simulation_quadratur_decoder_0_0_stub.vhdl
-- Design      : robot_simulation_quadratur_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity robot_simulation_quadratur_decoder_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );

end robot_simulation_quadratur_decoder_0_0;

architecture stub of robot_simulation_quadratur_decoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,encoder[1:0],reset,value[14:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "quadratur_decoder,Vivado 2019.2";
begin
end;
