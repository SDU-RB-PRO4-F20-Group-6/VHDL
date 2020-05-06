-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed May  6 20:04:17 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/design_1/ip/design_1_motor_controler_0_1/design_1_motor_controler_0_1_stub.vhdl
-- Design      : design_1_motor_controler_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_motor_controler_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    dir : in STD_LOGIC;
    outA : out STD_LOGIC;
    outB : out STD_LOGIC
  );

end design_1_motor_controler_0_1;

architecture stub of design_1_motor_controler_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,pwm,dir,outA,outB";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "motor_controler,Vivado 2019.2";
begin
end;
