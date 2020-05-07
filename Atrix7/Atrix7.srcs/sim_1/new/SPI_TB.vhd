-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 22.4.2020 18:30:18 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_SPI is
end tb_SPI;

architecture Behavioral of tb_SPI is

    component SPI
        port (clk_in       : in std_logic;
              spi_sclk     : in std_logic;
              spi_mosi     : in std_logic;
              spi_ss_n     : in std_logic;
              spi_miso     : out std_logic;
              spi_data_in  : out std_logic_vector (15 downto 0);
              spi_data_out : in std_logic_vector (15 downto 0));
    end component;


    signal clk_in       : std_logic := '0';
    signal spi_sclk     : std_logic;
    signal spi_mosi     : std_logic;
    signal spi_ss_n     : std_logic;
    signal spi_miso     : std_logic;
    signal spi_data_in  : std_logic_vector (15 downto 0);
    signal spi_data_out : std_logic_vector (15 downto 0);
    signal data : std_logic_vector (15 downto 0) := "1111000011110000";

begin

    dut : SPI
    port map (clk_in       => clk_in,
              spi_sclk     => spi_sclk,
              spi_mosi     => spi_mosi,
              spi_ss_n     => spi_ss_n,
              spi_miso     => spi_miso,
              spi_data_in  => spi_data_in,
              spi_data_out => spi_data_out);


    -- EDIT Adapt initialization as needed
    clk_in <= not clk_in after 7 ns;
    
    spi_sclk <= '0' after 50 ns, '1' after 80 ns, '0' after 110 ns, '1' after 140 ns, '0' after 170 ns, 
        '1' after 200 ns, '0' after 230 ns, '1' after 260 ns, '0' after 290 ns, '1' after 320 ns, 
        '0' after 350 ns, '1' after 380 ns, '0' after 410 ns, '1' after 440 ns, '0' after 470 ns, 
        '1' after 500 ns, '0' after 530 ns, '1' after 560 ns, '0' after 590 ns, '1' after 620 ns, 
        '0' after 650 ns, '1' after 680 ns, '0' after 710 ns, '1' after 740 ns, '0' after 770 ns, 
        '1' after 800 ns, '0' after 830 ns, '1' after 860 ns, '0' after 890 ns, '1' after 920 ns, 
        '0' after 950 ns, '1' after 980 ns, '0' after 1010 ns;
        
    spi_mosi <= data(15) after 50 ns, data(14) after 110 ns, data(13) after 170 ns, data(12) after 230 ns, data(11) after 290 ns, 
        data(10) after 350 ns, data(9) after 410 ns, data(8) after 470 ns, data(7) after 530 ns, data(6) after 590 ns, 
        data(5) after 650 ns, data(4) after 710 ns, data(3) after 770 ns, data(2) after 830 ns, data(1) after 890 ns,
        data(0) after 950 ns, 'U' after 1010 ns;
        
    spi_ss_n <= '0' after 50 ns, '1' after 1040 ns;
    
    spi_data_out <= ("0000111100001111");
    -- EDIT Add stimuli here



end Behavioral;