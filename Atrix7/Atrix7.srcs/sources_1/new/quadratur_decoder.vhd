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
    clk_in :    in  std_logic;                      --clock signal
    encoder:    in  std_logic_vector (1 downto 0);  --encoder input
    reset:      in std_logic;                       --reset button
--    enable:     in std_logic;                       --enable to write data
    value:      out std_logic_vector (14 downto 0));--visual count reader
end quadratur_decoder;

architecture Behavioral of quadratur_decoder is
signal preposition : std_logic_vector(1 downto 0);
signal preval_A : std_logic;
signal preval_B : std_logic;
signal position : unsigned(14 downto 0) := (others => '0');
begin
    
    process (clk_in)
    variable debounce_counter_A: integer range 0 to 1000000;
    variable debounce_counter_B: integer range 0 to 1000000;
    begin
        if rising_edge(clk_in) then
            if ((encoder /= preposition)) then 
                if (debounce_counter_A > 325000 and debounce_counter_B > 325000) then -- 325000 is to compensate for chatter = 6.5 milliseconds
                  case(preposition & encoder) is
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
                   
                   --looping at frame position
                   if (32767 = position) then position <= to_unsigned(32399, 15);
                   elsif (32400 <= position) then position <= (others =>  '0'); end if;
                   
                end if;
                preposition <= encoder;
            end if;
            
            -- write position to databus
            value <= std_logic_vector(position);
              
            if(reset = '1') then
              position <= (others => '0');
            end if;
        
            --reset debounce_counter_A when it changes value, else increment
            if(encoder(0) /= preval_A) then debounce_counter_A := 0; preval_A <= encoder(0);  else debounce_counter_A := debounce_counter_A + 1; end if;
            --reset debounce_counter_B when it changes value, else increment
            if(encoder(1) /= preval_B) then debounce_counter_B := 0; preval_B <= encoder(1); else debounce_counter_B := debounce_counter_B + 1; end if;
            
            --prevent debounce_counter_A from looping to 0
            if (debounce_counter_A < 999999) then debounce_counter_A := 999999; end if;
            --prevent debounce_counter_B from looping to 0
            if (debounce_counter_A < 999999) then debounce_counter_B := 999999; end if;
        end if;
    end process;
end Behavioral;
