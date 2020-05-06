----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2020 13:41:20
-- Design Name: 
-- Module Name: Evenparity - Behavioral
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

entity Evenparity is
  Port ( 
    data    : in std_logic_vector(15 downto 0);
    parity  : out std_logic);
end Evenparity;

architecture Behavioral of Evenparity is

begin
parity <= data(0) xor data(1) xor data(2) xor data(3) xor data(4) 
    xor data(5) xor data(6) xor data(7) xor data(8) xor data(9) xor 
    data(10) xor data(11) xor data(12) xor data(13) xor data(14) xor data(15);

end Behavioral;
