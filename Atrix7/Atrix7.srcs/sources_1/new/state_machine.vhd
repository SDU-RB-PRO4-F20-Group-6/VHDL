----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2020 16:55:41
-- Design Name: 
-- Module Name: state_machine - Behavioral
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

entity state_machine is
  Port (    
    clk_in      :   in std_logic;
    frame_choice:   in std_logic;
    motor_choice:   in std_logic;
    request_type:   in std_logic;
    parity_check:   in std_logic;
    
    --motor
    motor_ctrl_A:   out std_logic;
    motor_ctrl_B:   out std_logic;
    
    
    --position
    quad_enc_A:     in std_logic_vector(14 downto 0);
    quad_enc_B:     in std_logic_vector(14 downto 0);
    
    --index
    index_ctrl_A:   in std_logic;
    index_ctrl_B:   in std_logic;
    
    data_out:       out std_logic_vector(14 downto 0));
end state_machine;

architecture Behavioral of state_machine is
begin
    process(clk_in)
    variable frame : std_logic_vector(2 downto 0);
    begin
        if (rising_edge(clk_in)) then
            frame := frame_choice & motor_choice & request_type;
            case (frame) is
            --request frames
                when "000" => --motor 0 position
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '0';
                    data_out        <= quad_enc_A;
                when "001" => --motor 0 index
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '0';
                    data_out        <= (0  => index_ctrl_A, others => '0');
                when "010" => -- motor 1 position
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '0';
                    data_out        <= quad_enc_B;
                    
                when "011" => -- motor 1 index
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '0';
                    data_out        <= (0 => index_ctrl_B, others => '0');
                
                --command frames
                when "100" => -- pwm out motor 0
                    motor_ctrl_A    <= '1';-- <--
                    motor_ctrl_B    <= '0';
                when "101" =>
                    motor_ctrl_A    <= '1';-- <--
                    motor_ctrl_B    <= '0';
                    
                when "110" => -- pwm out motor 1
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '1';-- <--
                when "111" =>
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '1';-- <--
                    
                when others => -- error
                    motor_ctrl_A    <= '0';
                    motor_ctrl_B    <= '0';
            end case;
        end if;
    end process;
    
end Behavioral;
