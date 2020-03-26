----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2020 14:26:32
-- Design Name: 
-- Module Name: quadratur_decoder - Behavioral
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
use ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity quadratur_decoder is
    Port (
    clk :   in  std_logic;
    JB  :   in  std_logic_vector (1 downto 0);
    btnC:   in std_logic;
    led :   out std_logic_vector (15 downto 0));
end quadratur_decoder;

architecture Behavioral of quadratur_decoder is
signal preposition : std_logic_vector(1 downto 0);
signal position    : unsigned(15 downto 0) := (others => '0');
begin
    
    process (clk)
    variable delay: integer range 0 to 100000;
    begin
    if rising_edge(clk) then
        if delay < 100000 then
            delay := delay +1;
        else
            case((preposition & JB)) is
                when "0111" =>
                    position <= position + 1;
                when "1110" =>
                    position <= position + 1;
                when "1000" =>
                    position <= position + 1;
                when "0001" =>
                    position <= position + 1;
                when "0100" =>
                    position <= position - 1;
                when "0010" =>
                    position <= position - 1;
                when "1011" =>
                    position <= position - 1;
                when "1101" =>
                    position <= position - 1;
                when others =>
                    position <= position;
                end case;
                preposition <= JB;
                led <= std_logic_vector(position);
          end if;
          
          if(btnC = '1') then
            position <= (others => '0');
          end if;
          
      end if;
    end process;
end Behavioral;
