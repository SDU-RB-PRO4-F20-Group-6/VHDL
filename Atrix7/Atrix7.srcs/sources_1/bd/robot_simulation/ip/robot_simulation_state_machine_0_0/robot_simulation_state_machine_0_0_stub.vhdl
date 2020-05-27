-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 17 18:30:48 2020
-- Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/claus/source/semesterprojekt/VHDL/Atrix7/Atrix7.srcs/sources_1/bd/robot_simulation/ip/robot_simulation_state_machine_0_0/robot_simulation_state_machine_0_0_stub.vhdl
-- Design      : robot_simulation_state_machine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity robot_simulation_state_machine_0_0 is
  Port ( 
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

end robot_simulation_state_machine_0_0;

architecture stub of robot_simulation_state_machine_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,frame_choice,motor_choice,request_type,parity_check,motor_ctrl_A,motor_ctrl_B,quad_enc_A[14:0],quad_enc_B[14:0],index_ctrl_A,index_ctrl_B,data_out[14:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "state_machine,Vivado 2019.2";
begin
end;
