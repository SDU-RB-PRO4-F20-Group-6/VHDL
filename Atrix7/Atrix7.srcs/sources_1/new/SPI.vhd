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
    clk_in: in std_logic;
    
    ---------spi----------
    spi_sclk: in std_logic;---
    spi_mosi: in std_logic;---
    spi_ss  : in std_logic;---
    spi_miso: out std_logic;--
    ----------------------
    
    spi_data_in: out std_logic_vector(15 downto 0);
    spi_data_out: in std_logic_vector(15 downto 0));
end SPI;

architecture Behavioral of SPI is
signal buf_in: std_logic_vector(0 to 15) := (others => '0');
signal buf_out: std_logic_vector(0 to 15) := (others => '0');
signal pre_clk: std_logic;
signal pre_ss: std_logic;
begin
    process(clk_in, spi_sclk, spi_ss)
    variable position: integer range 0 to 15 := 0;
    begin
        if(rising_edge(clk_in)) then
        
            if(spi_ss = '0') then --if slave is selected
                --write (bit at faling edge) or (at sclk faling edge)
                if (pre_ss = '1' or (spi_sclk /= pre_clk and spi_sclk  = '0')) then 
                    spi_miso <= buf_out(position);
                    
                    pre_clk <= spi_sclk;
                end if;
                
                --read at rising edge
                if (spi_sclk /= pre_clk and spi_sclk  = '1') then
                    buf_in(position) <= spi_mosi;
                    position := position + 1;
                    pre_clk <= spi_sclk;
                end if;
                pre_ss <= spi_ss;
            elsif(spi_ss = '1') then
                position := 0;
                pre_ss <= '1';
                buf_out <= spi_data_out;
                pre_ss <= spi_ss;
                spi_data_in <= buf_in;
            end if;
        end if;
    end process;
end Behavioral;
