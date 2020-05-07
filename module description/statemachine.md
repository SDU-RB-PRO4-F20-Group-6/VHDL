

# statemachine
![statemachine module](https://i.gyazo.com/effd08d41240958dc5f1096c466e2ccb.png)
The statemachine dictates whats happening in the FPGA based on frame_choice, motor_choice and request_type.
Motor 0 is the same as motor A.
On the input, there is data comming from quad_enc and index_ctrl.
quad_enc is the quadrature decoders that reads the position of the motor, relative to where it started.
index_ctrl is the hall sensors used to calibrate. 
On the output, there is motor_ctrl and data_out.
motor_ctrl decides which motor may read the data from spi module.
data_out is connected directly to the spi module passes specific data from the input of the statemachine to the output, based on the frame recieved.
## benchmark
![benchmark](https://i.gyazo.com/33c2b5907761bfed78a1ddda94417587.png)
## code
```vhdl
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
```