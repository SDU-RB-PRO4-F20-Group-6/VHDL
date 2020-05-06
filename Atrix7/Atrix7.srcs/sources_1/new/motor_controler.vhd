----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2020 18:14:30
-- Design Name: 
-- Module Name: motor_controler - Behavioral
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

entity motor_controler is
  Port (
    clk:    in std_logic;
    pwm:    in std_logic;
    dir:    in std_logic;
    outA:   out std_logic;
    outB:   out std_logic);
end motor_controler;

architecture Behavioral of motor_controler is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            case dir is
                when '0' =>
                     outA <= pwm;
                     outB <=  '0';
                when '1' =>
                     outA <= '0';
                     outB <= pwm;
                when others =>
                     outA <= '0';
                     outB <= '0';
           end case;
        end if;    
    end process;

end Behavioral;
