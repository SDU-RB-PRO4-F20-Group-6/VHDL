----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.05.2020 11:26:21
-- Design Name: 
-- Module Name: enable - Behavioral
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

entity enable is
  Port (
  clk:  in  std_logic;
  sig:  in  std_logic;
  en:   in  std_logic;
  ou:   out std_logic);
end enable;

architecture Behavioral of enable is
signal sig_buffer: std_logic;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then        
            if(en = '1') then
                sig_buffer <= sig;
            end if;
            ou <=  sig_buffer;
        end if;
    end process;

end Behavioral;
