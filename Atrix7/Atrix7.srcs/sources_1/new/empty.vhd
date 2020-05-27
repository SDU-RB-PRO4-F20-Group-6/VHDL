----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 17:29:25
-- Design Name: 
-- Module Name: empty - Behavioral
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

entity empty is
  Port ( 
    clk_in :    in  std_logic;                      --clock signal
    encoder:    in  std_logic_vector (1 downto 0);  --encoder input
    reset:      in std_logic;                       --reset button
--    enable:     in std_logic;                     --enable to write data
    value:      out std_logic_vector (14 downto 0));--visual count reader
end empty;

architecture Behavioral of empty is
signal filtered_enc : std_logic_vector (1 downto 0); --the noioiceless encoder(0)
signal preposition : std_logic_vector(1 downto 0);
signal position : unsigned(14 downto 0) := (others => '0');
begin

    --this process handles filtering noice from quad encoders
    filter : process(encoder(0), encoder(1))
    variable enc : std_logic_vector(1 downto 0);
    begin
        enc := encoder(0) & encoder(1);
        case enc is 
            when "00" => 
                filtered_enc(0) <= '0';
            when "10" => 
                filtered_enc(1) <= '0';
            when "01" => 
                filtered_enc(1) <= '1';
            when "11" => 
                filtered_enc(0) <= '1';
            when others => 
                null;
        end case;
    end process;
    
    --this process decode the noicefree encoded quadrature signal
    decoder : process(clk_in)
    begin
        if (rising_edge(clk_in)) then
            case(preposition & filtered_enc) is
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
            
            --remember encoders previous position
            preposition <= filtered_enc;
            
            -- write position to databus
            value <= std_logic_vector(position);
            
            -- resets position
            if(reset = '1') then
              position <= (others => '0');
            end if;
            
        end if; 
    end process;
end Behavioral;
