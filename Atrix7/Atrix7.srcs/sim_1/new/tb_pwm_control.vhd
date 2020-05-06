-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 6.5.2020 17:01:43 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_pwm_control is
end tb_pwm_control;

architecture Behavioral of tb_pwm_control is

    component pwm_control
        port (clk_in      : in std_logic;
              pwm_trigger : in std_logic_vector (8 downto 0);
              enable      : in std_logic;
              reset       : in std_logic;
              pwm_signal  : out std_logic);
    end component;

    signal clk_in      : std_logic := '0';
    signal pwm_trigger : std_logic_vector (8 downto 0) := (others  =>  '0');
    signal enable      : std_logic := '1';
    signal reset       : std_logic := '0';
    signal pwm_signal  : std_logic;

begin

    dut : pwm_control
    port map (clk_in      => clk_in,
              pwm_trigger => pwm_trigger,
              enable      => enable,
              reset       => reset,
              pwm_signal  => pwm_signal);
              
    -- EDIT Adapt initialization as needed
    clk_in <= not clk_in after 1600 ns;
    pwm_trigger <= "100000000", "010000000" after 30 ms, "111111111" after 50 ms ;
    enable <= not enable after 20 ms;
    reset <= not reset after 70 ms;
    -- EDIT Add stimuli here


end Behavioral;