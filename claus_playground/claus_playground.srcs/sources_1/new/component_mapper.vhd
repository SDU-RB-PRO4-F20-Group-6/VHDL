----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2020 20:43:28
-- Design Name: 
-- Module Name: component_mapper - Behavioral
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

entity component_mapper is
  Port ( 
    clk:    in std_logic;
    
  -----------spi------------
    sclk:   in std_logic;--- JA[3]
    ss:     in std_logic;--- JA[2]
    miso:   out std_logic;-- JA[1]
    mosi:   in std_logic;--- JA[0]
  --------------------------
    
    btnC:   in std_logic;
    led:    out std_logic_vector(15 downto 0) := (others => '0'));
end component_mapper;

architecture Behavioral of component_mapper is
--deffine busses and signals
signal pwm_trigger_bus:   std_logic_vector(15 downto 0);
--define components used
component quadratur_decoder
    Port (
        clk_in :   in  std_logic;                       --clock signal
        encoder:in  std_logic_vector (1 downto 0);      --encoder input
        reset:  in std_logic;                           --reset button
        value:  out std_logic_vector (15 downto 0));    --count reader
end component;

component pwm_control
    Port ( 
        clk_in:     in std_logic;
        pwm_trigger:in std_logic_vector (15 downto 0);
        pwm_signal: out std_logic); --output
end component;

component spi
    Port (    
    spi_clk_in: in std_logic;
    
    spi_sclk: in std_logic;
    spi_mosi: in std_logic;
    spi_ss  : in std_logic;
    spi_miso: out std_logic;
    
    spi_data_in: out std_logic_vector(15 downto 0);
    spi_data_out: in std_logic_vector(15 downto 0) := (others => '0'));
end component;


begin --begin Behavioral
--motor_feedback: quadratur_decoder
--    port map(
--        clk_in      => clk,
--        encoder     => JA,
--        reset       => btnC,
--        value       => pwm_trigger_bus
--    );

--motor_input: pwm_control
--    port map(
--        clk_in      => clk,
--        pwm_trigger => pwm_trigger_bus,
--        pwm_signal  => led(1)
--    );

communication: spi
    port map(
    spi_clk_in => clk,  -- clock

    --------spi---------
    spi_sclk=> sclk,----
    spi_mosi=> mosi,----
    spi_miso=> miso,----
    spi_ss  => ss,------
    --------------------
    
    spi_data_in =>led,  -- data from tiva to artix
    spi_data_out =>open -- data from artix to tiva
    );
end Behavioral;
