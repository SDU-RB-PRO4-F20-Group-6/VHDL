----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2020 20:43:28
-- Design Name: 
-- Module Name: component_mapper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity component_mapper is
  Port ( 
    clk:    in std_logic;
    JB:     in std_logic_vector(1 downto 0);
    btnC:   in std_logic;
    led:    out std_logic_vector(15 downto 0) := (others => '0'));
end component_mapper;

architecture Behavioral of component_mapper is
--deffine busses and signals
signal pwm_trigger_bus:   std_logic_vector(15 downto 0);

--define components used
component quadratur_decoder
    Port (
        clk_in :   in  std_logic;                       --clock signal
        encoder:in  std_logic_vector (1 downto 0);      --encoder input
        reset:  in std_logic;                           --reset button
        value:  out std_logic_vector (15 downto 0));     --count reader
end component;

component pwm_control
    Port ( 
        clk_in:     in std_logic;
        pwm_trigger:in std_logic_vector (15 downto 0);
        pwm_signal: out std_logic); --output
end component;

begin --begin Behavioral
motor_feedback: quadratur_decoder
    port map(
        clk_in      => clk,
        encoder     => JB,
        reset       => btnC,
        value       => pwm_trigger_bus
    );

motor_input: pwm_control
    port map(
        clk_in      => clk,
        pwm_trigger => pwm_trigger_bus,
        pwm_signal  => led(0)
    );
end Behavioral;
