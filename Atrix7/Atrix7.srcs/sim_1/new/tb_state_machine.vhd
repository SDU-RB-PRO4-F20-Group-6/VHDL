-- Testbench automatically generated online
-- at http://vhdl.lapinoo.net
-- Generation date : 6.5.2020 19:44:23 GMT

library ieee;
use ieee.std_logic_1164.all;

entity tb_state_machine is
end tb_state_machine;

architecture Behavioral of tb_state_machine is

    component state_machine
        port (clk_in       : in std_logic;
              frame_choice : in std_logic;
              motor_choice : in std_logic;
              request_type : in std_logic;
              parity_check : in std_logic;
              motor_ctrl_A : out std_logic;
              motor_ctrl_B : out std_logic;
              quad_enc_A   : in std_logic_vector (14 downto 0) := (others =>  '0');
              quad_enc_B   : in std_logic_vector (14 downto 0) := (others =>  '0');
              index_ctrl_A : in std_logic;
              index_ctrl_B : in std_logic;
              data_out     : out std_logic_vector (14 downto 0));
    end component;

    signal clk_in       : std_logic := '0';
    signal frame_choice : std_logic := '0';
    signal motor_choice : std_logic := '0';
    signal request_type : std_logic := '0';
    signal parity_check : std_logic := '1';
    signal motor_ctrl_A : std_logic;
    signal motor_ctrl_B : std_logic;
    signal quad_enc_A   : std_logic_vector (14 downto 0);
    signal quad_enc_B   : std_logic_vector (14 downto 0);
    signal index_ctrl_A : std_logic := '0';
    signal index_ctrl_B : std_logic := '0';
    signal data_out     : std_logic_vector (14 downto 0);

begin

    dut : state_machine
    port map (clk_in       => clk_in,
              frame_choice => frame_choice,
              motor_choice => motor_choice,
              request_type => request_type,
              parity_check => parity_check,
              motor_ctrl_A => motor_ctrl_A,
              motor_ctrl_B => motor_ctrl_B,
              quad_enc_A   => quad_enc_A,
              quad_enc_B   => quad_enc_B,
              index_ctrl_A => index_ctrl_A,
              index_ctrl_B => index_ctrl_B,
              data_out     => data_out);

        -- EDIT Adapt initialization as needed
        clk_in <= not clk_in after 10 ns;
        frame_choice <= 
            '0' after 40 ns,
            '0' after 80 ns,
            '0' after 120 ns,
            '0' after 160 ns,
            '1' after 200 ns,
            '1' after 240 ns;
        motor_choice <= 
            '0' after 40 ns,
            '0' after 80 ns,
            '1' after 120 ns,
            '1' after 160 ns,
            '0' after 200 ns,
            '1' after 240 ns;
        request_type <= 
            '0' after 40 ns,
            '1' after 80 ns,
            '0' after 120 ns,
            '1' after 160 ns,
            '0' after 200 ns,
            '0' after 240 ns;
        quad_enc_A <= "111111101101110";
        quad_enc_B <= "101010111100110";
        index_ctrl_A <= '1';
        index_ctrl_B <= '0';

        -- EDIT Add stimuli here

end Behavioral;