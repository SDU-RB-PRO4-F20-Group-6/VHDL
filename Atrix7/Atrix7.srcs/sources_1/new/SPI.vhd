----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2020 11:37:05
-- Design Name: 
-- Module Name: SPI - Behavioral
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

entity SPI is
  Port (
  
    clk_in:   in std_logic;
    ---------spi----------
    spi_sclk: in std_logic;---
    spi_mosi: in std_logic;---
    spi_ss_n  : in std_logic;---
    spi_miso: out std_logic;--
    ----------------------
    
    spi_data_in: out std_logic_vector(15 downto 0);
    spi_data_out: in std_logic_vector(15 downto 0));
end SPI;

architecture Behavioral of SPI is
signal buf_in: std_logic_vector(0 to 15) := (others => '0');
signal buf_out: std_logic_vector(0 to 15) := (others => '0');
signal pre_ss: std_logic := '1';
begin
    process(spi_sclk, spi_ss_n, clk_in)
    variable position: integer range 0 to 15 := 0;
    begin
        if (rising_edge(clk_in) and spi_ss_n /= '0') then
            position := 0;
            spi_data_in <= buf_in;
            buf_out <= spi_data_out;
        end if;
        
        if( pre_ss /= '0' and spi_ss_n = '0') then --falling_edge(spi_ss)
            spi_miso <= buf_out(position);
        end if;
        
        if(rising_edge(spi_sclk) and (spi_ss_n = '0')) then   --read at rising edge
            buf_in(position) <= spi_mosi;
        end if;
        
        if(falling_edge(spi_sclk) and (spi_ss_n = '0')) then  --write at faling edge
            position := (position + 1) mod 16;
            spi_miso <= buf_out(position);
        end if;
        pre_ss <= spi_ss_n;
    end process;
end Behavioral;
