-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 22.4.2020 18:30:18 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_SPI is
end tb_SPI;

architecture Behavioral of tb_SPI is

    component SPI
        port (spi_sclk     : in std_logic;
              spi_mosi     : in std_logic;
              spi_ss       : in std_logic;
              spi_miso     : out std_logic;
              spi_data_in  : out std_logic_vector (15 downto 0);
              spi_data_out : in std_logic_vector (15 downto 0));
    end component;


    signal spi_sclk     : std_logic := '0';
    signal spi_mosi     : std_logic := '0';
    signal spi_ss       : std_logic := '1';
    signal spi_miso     : std_logic := '0';
    signal spi_data_in  : std_logic_vector (15 downto 0);
    signal spi_data_out : std_logic_vector (15 downto 0);

begin

    dut : SPI
    port map (spi_sclk     => spi_sclk,
              spi_mosi     => spi_mosi,
              spi_ss       => spi_ss,
              spi_miso     => spi_miso,
              spi_data_in  => spi_data_in,
              spi_data_out => spi_data_out);


    -- EDIT Adapt initialization as needed
    spi_sclk <= not spi_sclk after 5 ns;
    spi_mosi <= not spi_mosi after 10 ns;
    spi_ss <= not spi_ss after 160 ns;
    spi_data_out <= ("0000111100001111");

    -- EDIT Add stimuli here



end Behavioral;