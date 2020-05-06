----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2020 13:36:11
-- Design Name: 
-- Module Name: delay - Behavioral
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

entity delay is
    generic (
        ports   : integer := 1;
        clock   : integer := 1);
    Port (
        clk_in  : in std_logic;
        signal_in   : in std_logic_vector(ports-1 downto 0);
        signal_out  : out std_logic_vector(ports-1 downto 0));
end delay;

architecture Behavioral of delay is
signal preValue: std_logic_vector(ports-1 downto 0);
begin
    process(clk_in)
    variable counter: integer range 0 to clock  := 0;
    begin
    
        if(rising_edge(clk_in)) then
            if (preValue /= signal_in) then 
                counter := 0;
                preValue <= signal_in;
            end if;
            
            if(counter = clock) then 
                signal_out <= signal_in;
            else
                counter := counter + 1;
            end if;
         end if;   
    end process;

end Behavioral;
