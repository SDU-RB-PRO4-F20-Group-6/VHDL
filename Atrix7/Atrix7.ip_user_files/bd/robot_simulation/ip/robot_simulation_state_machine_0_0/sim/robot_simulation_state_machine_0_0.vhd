-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:state_machine:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY robot_simulation_state_machine_0_0 IS
  PORT (
    clk_in : IN STD_LOGIC;
    frame_choice : IN STD_LOGIC;
    motor_choice : IN STD_LOGIC;
    request_type : IN STD_LOGIC;
    parity_check : IN STD_LOGIC;
    motor_ctrl_A : OUT STD_LOGIC;
    motor_ctrl_B : OUT STD_LOGIC;
    quad_enc_A : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    quad_enc_B : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    index_ctrl_A : IN STD_LOGIC;
    index_ctrl_B : IN STD_LOGIC;
    data_out : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END robot_simulation_state_machine_0_0;

ARCHITECTURE robot_simulation_state_machine_0_0_arch OF robot_simulation_state_machine_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF robot_simulation_state_machine_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT state_machine IS
    PORT (
      clk_in : IN STD_LOGIC;
      frame_choice : IN STD_LOGIC;
      motor_choice : IN STD_LOGIC;
      request_type : IN STD_LOGIC;
      parity_check : IN STD_LOGIC;
      motor_ctrl_A : OUT STD_LOGIC;
      motor_ctrl_B : OUT STD_LOGIC;
      quad_enc_A : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      quad_enc_B : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      index_ctrl_A : IN STD_LOGIC;
      index_ctrl_B : IN STD_LOGIC;
      data_out : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
    );
  END COMPONENT state_machine;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF robot_simulation_state_machine_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : state_machine
    PORT MAP (
      clk_in => clk_in,
      frame_choice => frame_choice,
      motor_choice => motor_choice,
      request_type => request_type,
      parity_check => parity_check,
      motor_ctrl_A => motor_ctrl_A,
      motor_ctrl_B => motor_ctrl_B,
      quad_enc_A => quad_enc_A,
      quad_enc_B => quad_enc_B,
      index_ctrl_A => index_ctrl_A,
      index_ctrl_B => index_ctrl_B,
      data_out => data_out
    );
END robot_simulation_state_machine_0_0_arch;
