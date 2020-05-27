--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed May 27 15:17:25 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=30,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=15,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_0_2;
  component design_1_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1_xlslice_2_0;
  component design_1_xlconcat_0_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_2;
  component design_1_xlconcat_0_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_3;
  component design_1_xlslice_4_8 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_4_8;
  component design_1_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_5_0;
  component design_1_xlslice_5_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_5_1;
  component design_1_xlslice_5_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_5_2;
  component design_1_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_2_0;
  component design_1_delay_0_0 is
  port (
    clk_in : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    signal_out : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1_delay_0_0;
  component design_1_JB6_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_JB6_0;
  component design_1_JB6_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_JB6_1;
  component design_1_xlconcat_3_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlconcat_3_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_delay_0_1 is
  port (
    clk_in : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_delay_0_1;
  component design_1_delay_1_0 is
  port (
    clk_in : in STD_LOGIC;
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_delay_1_0;
  component design_1_enable_0_0 is
  port (
    clk : in STD_LOGIC;
    sig : in STD_LOGIC;
    en : in STD_LOGIC;
    ou : out STD_LOGIC
  );
  end component design_1_enable_0_0;
  component design_1_enable_1_0 is
  port (
    clk : in STD_LOGIC;
    sig : in STD_LOGIC;
    en : in STD_LOGIC;
    ou : out STD_LOGIC
  );
  end component design_1_enable_1_0;
  component design_1_motor_controler_0_0 is
  port (
    clk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    dir : in STD_LOGIC;
    outA : out STD_LOGIC;
    outB : out STD_LOGIC
  );
  end component design_1_motor_controler_0_0;
  component design_1_motor_controler_0_1 is
  port (
    clk : in STD_LOGIC;
    pwm : in STD_LOGIC;
    dir : in STD_LOGIC;
    outA : out STD_LOGIC;
    outB : out STD_LOGIC
  );
  end component design_1_motor_controler_0_1;
  component design_1_pwm_control_0_0 is
  port (
    clk_in : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC;
    reset : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  end component design_1_pwm_control_0_0;
  component design_1_pwm_control_0_1 is
  port (
    clk_in : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC;
    reset : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  end component design_1_pwm_control_0_1;
  component design_1_SPI_0_1 is
  port (
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_SPI_0_1;
  component design_1_quadratur_decoder_0_4 is
  port (
    clk_in : in STD_LOGIC;
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component design_1_quadratur_decoder_0_4;
  component design_1_quadratur_decoder_0_5 is
  port (
    clk_in : in STD_LOGIC;
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component design_1_quadratur_decoder_0_5;
  component design_1_Evenparity_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    parity : out STD_LOGIC
  );
  end component design_1_Evenparity_0_0;
  component design_1_parity_check_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    parity : out STD_LOGIC
  );
  end component design_1_parity_check_0;
  component design_1_data_flow_manager_0_0 is
  port (
    clk_in : in STD_LOGIC;
    frame_choice : in STD_LOGIC;
    motor_choice : in STD_LOGIC;
    request_type : in STD_LOGIC;
    parity_check : in STD_LOGIC;
    motor_ctrl_A : out STD_LOGIC;
    motor_ctrl_B : out STD_LOGIC;
    quad_enc_A : in STD_LOGIC_VECTOR ( 14 downto 0 );
    quad_enc_B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    index_ctrl_A : in STD_LOGIC;
    index_ctrl_B : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component design_1_data_flow_manager_0_0;
  signal JB0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JB1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JB_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal JC0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JC1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Motor_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC;
  signal SPI_0_spi_data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_0_spi_miso : STD_LOGIC;
  signal constant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal delay_0_output : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal delay_1_signal_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal delay_2_signal_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal enable_0_ou : STD_LOGIC;
  signal enable_1_ou : STD_LOGIC;
  signal frame_type_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal index_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal index_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mosi_1 : STD_LOGIC;
  signal motor_0_pwm_signal : STD_LOGIC;
  signal motor_1_pwm_signal : STD_LOGIC;
  signal motor_controler_0_outA : STD_LOGIC;
  signal motor_controler_0_outB : STD_LOGIC;
  signal motor_controler_1_outA : STD_LOGIC;
  signal motor_controler_1_outB : STD_LOGIC;
  signal parity_calc_parity : STD_LOGIC;
  signal parity_check_parity : STD_LOGIC;
  signal pwm_data_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal quadratur_motor_0_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal quadratur_motor_1_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  signal sclk_1 : STD_LOGIC;
  signal ss_1 : STD_LOGIC;
  signal state_machine_0_data_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal state_machine_0_motor_ctrl_A : STD_LOGIC;
  signal state_machine_0_motor_ctrl_B : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btnC : signal is "xilinx.com:signal:reset:1.0 RST.BTNC RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btnC : signal is "XIL_INTERFACENAME RST.BTNC, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  JB_1(7 downto 0) <= JB(7 downto 0);
  JC(7 downto 0) <= xlconcat_3_dout(7 downto 0);
  Net <= clk;
  led(15 downto 0) <= xlconcat_2_dout(15 downto 0);
  miso <= SPI_0_spi_miso;
  mosi_1 <= mosi;
  reset_0_1 <= btnC;
  sclk_1 <= sclk;
  ss_1 <= ss;
JB1: component design_1_xlslice_4_8
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => JB0_Dout(0)
    );
JB2: component design_1_xlslice_5_0
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => JB1_Dout(0)
    );
JB5: component design_1_xlslice_5_1
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => JC0_Dout(0)
    );
JB6: component design_1_xlslice_5_2
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => JC1_Dout(0)
    );
Motor: component design_1_xlslice_0_1
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => Motor_Dout(0)
    );
SPI_0: component design_1_SPI_0_1
     port map (
      clk_in => Net,
      spi_data_in(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      spi_data_out(15 downto 0) => xlconcat_2_dout(15 downto 0),
      spi_miso => SPI_0_spi_miso,
      spi_mosi => mosi_1,
      spi_sclk => sclk_1,
      spi_ss_n => ss_1
    );
constant_1: component design_1_xlconstant_0_0
     port map (
      dout(0) => constant_1_dout(0)
    );
data_flow_manager_0: component design_1_data_flow_manager_0_0
     port map (
      clk_in => Net,
      data_out(14 downto 0) => state_machine_0_data_out(14 downto 0),
      frame_choice => frame_type_Dout(0),
      index_ctrl_A => index_0_Dout(0),
      index_ctrl_B => index_1_Dout(0),
      motor_choice => Motor_Dout(0),
      motor_ctrl_A => state_machine_0_motor_ctrl_A,
      motor_ctrl_B => state_machine_0_motor_ctrl_B,
      parity_check => parity_check_parity,
      quad_enc_A(14 downto 0) => quadratur_motor_0_value(14 downto 0),
      quad_enc_B(14 downto 0) => quadratur_motor_1_value(14 downto 0),
      request_type => xlslice_2_Dout(0)
    );
delay_0: component design_1_delay_0_0
     port map (
      clk_in => Net,
      signal_in(8 downto 0) => pwm_data_Dout(8 downto 0),
      signal_out(8 downto 0) => delay_0_output(8 downto 0)
    );
delay_1: component design_1_delay_0_1
     port map (
      clk_in => Net,
      signal_in(0) => xlslice_2_Dout(0),
      signal_out(0) => delay_1_signal_out(0)
    );
delay_2: component design_1_delay_1_0
     port map (
      clk_in => Net,
      signal_in(0) => xlslice_2_Dout(0),
      signal_out(0) => delay_2_signal_out(0)
    );
dir_or_request_type: component design_1_xlslice_0_2
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
enable_0: component design_1_enable_0_0
     port map (
      clk => Net,
      en => state_machine_0_motor_ctrl_A,
      ou => enable_0_ou,
      sig => delay_1_signal_out(0)
    );
enable_1: component design_1_enable_1_0
     port map (
      clk => Net,
      en => state_machine_0_motor_ctrl_B,
      ou => enable_1_ou,
      sig => delay_2_signal_out(0)
    );
frame_type: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => frame_type_Dout(0)
    );
index_0: component design_1_JB6_1
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => index_0_Dout(0)
    );
index_1: component design_1_JB6_0
     port map (
      Din(7 downto 0) => JB_1(7 downto 0),
      Dout(0) => index_1_Dout(0)
    );
motor_0: component design_1_pwm_control_0_0
     port map (
      clk_in => Net,
      enable => state_machine_0_motor_ctrl_A,
      pwm_signal => motor_0_pwm_signal,
      pwm_trigger(8 downto 0) => delay_0_output(8 downto 0),
      reset => reset_0_1
    );
motor_1: component design_1_pwm_control_0_1
     port map (
      clk_in => Net,
      enable => state_machine_0_motor_ctrl_B,
      pwm_signal => motor_1_pwm_signal,
      pwm_trigger(8 downto 0) => delay_0_output(8 downto 0),
      reset => reset_0_1
    );
motor_controller_0: component design_1_motor_controler_0_0
     port map (
      clk => Net,
      dir => enable_0_ou,
      outA => motor_controler_0_outA,
      outB => motor_controler_0_outB,
      pwm => motor_0_pwm_signal
    );
motor_controller_1: component design_1_motor_controler_0_1
     port map (
      clk => Net,
      dir => enable_1_ou,
      outA => motor_controler_1_outA,
      outB => motor_controler_1_outB,
      pwm => motor_1_pwm_signal
    );
parity_calc: component design_1_parity_check_0
     port map (
      data(14 downto 0) => state_machine_0_data_out(14 downto 0),
      parity => parity_calc_parity
    );
parity_check: component design_1_Evenparity_0_0
     port map (
      data(14 downto 0) => SPI_0_spi_data_in(14 downto 0),
      parity => parity_check_parity
    );
pwm_data: component design_1_xlslice_2_0
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(8 downto 0) => pwm_data_Dout(8 downto 0)
    );
quadratur_motor_0: component design_1_quadratur_decoder_0_4
     port map (
      clk_in => Net,
      encoder(1 downto 0) => xlconcat_0_dout(1 downto 0),
      reset => reset_0_1,
      value(14 downto 0) => quadratur_motor_0_value(14 downto 0)
    );
quadratur_motor_1: component design_1_quadratur_decoder_0_5
     port map (
      clk_in => Net,
      encoder(1 downto 0) => xlconcat_1_dout(1 downto 0),
      reset => reset_0_1,
      value(14 downto 0) => quadratur_motor_1_value(14 downto 0)
    );
xlconcat_0: component design_1_xlconcat_0_2
     port map (
      In0(0) => JB0_Dout(0),
      In1(0) => JB1_Dout(0),
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconcat_1: component design_1_xlconcat_0_3
     port map (
      In0(0) => JC0_Dout(0),
      In1(0) => JC1_Dout(0),
      dout(1 downto 0) => xlconcat_1_dout(1 downto 0)
    );
xlconcat_2: component design_1_xlconcat_2_0
     port map (
      In0(0) => parity_calc_parity,
      In1(14 downto 0) => state_machine_0_data_out(14 downto 0),
      dout(15 downto 0) => xlconcat_2_dout(15 downto 0)
    );
xlconcat_3: component design_1_xlconcat_3_1
     port map (
      In0(0) => motor_controler_0_outA,
      In1(0) => motor_controler_0_outB,
      In2(0) => constant_1_dout(0),
      In3(0) => '0',
      In4(0) => motor_controler_1_outA,
      In5(0) => motor_controler_1_outB,
      In6(0) => constant_1_dout(0),
      In7(0) => '0',
      dout(7 downto 0) => xlconcat_3_dout(7 downto 0)
    );
end STRUCTURE;
