# spi
![spi module](https://i.gyazo.com/5e5fc90acf1c3c4499d29da648abc44d.png)
The spi handles communication between the MCU and the FPGA. The moduel works asynchronous with sclk as clock, while the slave select (ss) is low and works in sync with the rest of the FPGA while ss is not low.
The data comming into the FPGA form the MCU can be read on the spi_data_in bus while outgoing data is sent to the MCU using the spi_data_out bus on the spi module.
## test bench
![Image from Gyazo](https://i.gyazo.com/e856f0cace5aabb92b863ec43b2b1aae.png)
## code
```vhdl
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
```