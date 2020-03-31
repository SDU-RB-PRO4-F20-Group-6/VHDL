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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
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
    clk_in :   in  std_logic;                          --clock signal
    encoder:in  std_logic_vector (1 downto 0);      --encoder input
    reset:  in std_logic;                           --reset button
    value:  out std_logic_vector (5 downto 0));    --visual count reader
end quadratur_decoder;

architecture Behavioral of quadratur_decoder is
signal preposition : std_logic_vector(1 downto 0);
signal position    : unsigned(5 downto 0) := (others => '0');
begin
    
    process (clk_in)
    variable delay: integer range 0 to 1000000;
    begin
        if rising_edge(clk_in) then
            delay := delay + 1;
            if (delay > 999999) then delay := 999999; end if;
            if ((encoder /= preposition)) then 
                if (delay > 325000) then -- 325000 is delay to compensate for rebounce
                  case((preposition & encoder)) is
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
                   
                   preposition <= encoder;
                end if;
            else 
                delay  := 0;
            end if;
            value <= std_logic_vector(position);
              
            if(reset = '1') then
              position <= (others => '0');
            end if; 
        end if;

    end process;
end Behavioral;
