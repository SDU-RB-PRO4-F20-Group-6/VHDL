-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 6.5.2020 16:13:27 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_motor_controler is
end tb_motor_controler;

architecture Behavioral of tb_motor_controler is

    component motor_controler
        port (clk  : in std_logic;
              pwm  : in std_logic;
              dir  : in std_logic;
              outA : out std_logic;
              outB : out std_logic);
    end component;

    signal clk  : std_logic := '1';
    signal pwm  : std_logic := '0';
    signal dir  : std_logic := '0';
    signal outA : std_logic;
    signal outB : std_logic;

begin

    dut : motor_controler
    port map (clk  => clk,
              pwm  => pwm,
              dir  => dir,
              outA => outA,
              outB => outB);

    -- EDIT Adapt initialization as needed
    clk <= not clk after 5 ns;
    pwm <= not pwm after 20 ns;
    dir <= not dir after 200 ns;

    -- EDIT Add stimuli here



end Behavioral;