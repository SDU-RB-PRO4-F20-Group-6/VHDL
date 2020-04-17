----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2020 16:38:59
-- Design Name: 
-- Module Name: pwm_control - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_control is
  Port ( 
    clk_in:     in std_logic;                       --clock
    pwm_trigger:in std_logic_vector (8 downto 0);  --input
--    at_falling:  in std_logic;
    enable:     in std_logic;
    pwm_signal: out std_logic);                     --output
end pwm_control;

architecture Behavioral of pwm_control is
signal trigger_buffer : std_logic_vector (8 downto 0) := (others => '0');
begin
    process(clk_in)
    variable clk_counter: integer range 0 to 511;
    begin
        if (rising_edge(clk_in)) then
            if (enable = '1') then
                trigger_buffer <= pwm_trigger;
            end if;
            if (clk_counter <= unsigned(trigger_buffer)) then
                pwm_signal <= '1'; --xor at_falling;
            elsif (clk_counter > unsigned(trigger_buffer)) then
                pwm_signal <= '0'; --xor at_falling;
            end if;
            clk_counter := clk_counter + 1;
        end if;
    end process;
end Behavioral;
