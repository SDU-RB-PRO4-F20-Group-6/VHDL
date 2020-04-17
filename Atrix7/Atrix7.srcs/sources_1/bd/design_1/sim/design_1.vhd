--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Apr 17 11:26:35 2020
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
    JC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    btnD : in STD_LOGIC;
    btnU : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 14 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
  component design_1_pwm_control_0_0 is
  port (
    clk_in : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  end component design_1_pwm_control_0_0;
  component design_1_pwm_control_0_1 is
  port (
    clk_in : in STD_LOGIC;
    pwm_trigger : in STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC;
    pwm_signal : out STD_LOGIC
  );
  end component design_1_pwm_control_0_1;
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
  component design_1_delay_0_0 is
  port (
    clk_in : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 8 downto 0 );
    output : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1_delay_0_0;
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
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_0_0;
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
  component design_1_state_machine_0_0 is
  port (
    clk_in : in STD_LOGIC;
    frame_choice : in STD_LOGIC;
    motor_choice : in STD_LOGIC;
    request_type : in STD_LOGIC;
    motor_ctrl_A : out STD_LOGIC;
    motor_ctrl_B : out STD_LOGIC;
    quad_enc_A : in STD_LOGIC_VECTOR ( 14 downto 0 );
    quad_enc_B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    index_ctrl_A : in STD_LOGIC;
    index_ctrl_B : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component design_1_state_machine_0_0;
  component design_1_SPI_0_0 is
  port (
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_SPI_0_0;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Din_0_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal JB0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JB1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JC0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JC1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_spi_data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_0_spi_miso : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal delay_0_output : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal index_ctrl_A_0_1 : STD_LOGIC;
  signal index_ctrl_B_0_1 : STD_LOGIC;
  signal pwm_control_0_pwm_signal : STD_LOGIC;
  signal pwm_control_1_pwm_signal : STD_LOGIC;
  signal quadratur_decoder_0_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal quadratur_decoder_1_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  signal spi_mosi_0_1 : STD_LOGIC;
  signal spi_sclk_0_1 : STD_LOGIC;
  signal spi_ss_0_1 : STD_LOGIC;
  signal state_machine_0_data_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal state_machine_0_motor_ctrl_A : STD_LOGIC;
  signal state_machine_0_motor_ctrl_B : STD_LOGIC;
  signal xlconcat_0_dout1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_basys3_led_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btnC : signal is "xilinx.com:signal:reset:1.0 RST.BTNC RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btnC : signal is "XIL_INTERFACENAME RST.BTNC, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Din_0_1(7 downto 0) <= JB(7 downto 0);
  Din_0_2(7 downto 0) <= JC(7 downto 0);
  clk_in_0_1 <= clk;
  index_ctrl_A_0_1 <= btnU;
  index_ctrl_B_0_1 <= btnD;
  led(14 downto 0) <= state_machine_0_data_out(14 downto 0);
  miso <= SPI_0_spi_miso;
  reset_0_1 <= btnC;
  spi_mosi_0_1 <= mosi;
  spi_sclk_0_1 <= sclk;
  spi_ss_0_1 <= ss;
JB0: component design_1_xlslice_4_8
     port map (
      Din(7 downto 0) => Din_0_1(7 downto 0),
      Dout(0) => JB0_Dout(0)
    );
JB1: component design_1_xlslice_5_0
     port map (
      Din(7 downto 0) => Din_0_1(7 downto 0),
      Dout(0) => JB1_Dout(0)
    );
JC0: component design_1_xlslice_5_1
     port map (
      Din(7 downto 0) => Din_0_2(7 downto 0),
      Dout(0) => JC0_Dout(0)
    );
JC1: component design_1_xlslice_5_2
     port map (
      Din(7 downto 0) => Din_0_2(7 downto 0),
      Dout(0) => JC1_Dout(0)
    );
SPI_0: component design_1_SPI_0_0
     port map (
      clk_in => clk_in_0_1,
      spi_data_in(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      spi_data_out(15) => '0',
      spi_data_out(14 downto 0) => state_machine_0_data_out(14 downto 0),
      spi_miso => SPI_0_spi_miso,
      spi_mosi => spi_mosi_0_1,
      spi_sclk => spi_sclk_0_1,
      spi_ss => spi_ss_0_1
    );
basys3_led: component design_1_xlconcat_0_0
     port map (
      In0(0) => pwm_control_0_pwm_signal,
      In1(0) => pwm_control_1_pwm_signal,
      In10(0) => '0',
      In11(0) => '0',
      In12(0) => '0',
      In13(0) => '0',
      In14(0) => '0',
      In15(0) => '0',
      In2(0) => xlslice_2_Dout(0),
      In3(0) => xlslice_1_Dout(0),
      In4(0) => xlslice_0_Dout(0),
      In5(0) => '0',
      In6(0) => '0',
      In7(0) => '0',
      In8(0) => '0',
      In9(0) => '0',
      dout(15 downto 0) => NLW_basys3_led_dout_UNCONNECTED(15 downto 0)
    );
delay_0: component design_1_delay_0_0
     port map (
      clk_in => clk_in_0_1,
      input(8 downto 0) => xlslice_3_Dout(8 downto 0),
      output(8 downto 0) => delay_0_output(8 downto 0)
    );
pwm_control_0: component design_1_pwm_control_0_0
     port map (
      clk_in => clk_in_0_1,
      enable => state_machine_0_motor_ctrl_A,
      pwm_signal => pwm_control_0_pwm_signal,
      pwm_trigger(8 downto 0) => delay_0_output(8 downto 0)
    );
pwm_control_1: component design_1_pwm_control_0_1
     port map (
      clk_in => clk_in_0_1,
      enable => state_machine_0_motor_ctrl_B,
      pwm_signal => pwm_control_1_pwm_signal,
      pwm_trigger(8 downto 0) => delay_0_output(8 downto 0)
    );
quadratur_decoder_0: component design_1_quadratur_decoder_0_4
     port map (
      clk_in => clk_in_0_1,
      encoder(1 downto 0) => xlconcat_0_dout1(1 downto 0),
      reset => reset_0_1,
      value(14 downto 0) => quadratur_decoder_0_value(14 downto 0)
    );
quadratur_decoder_1: component design_1_quadratur_decoder_0_5
     port map (
      clk_in => clk_in_0_1,
      encoder(1 downto 0) => xlconcat_1_dout(1 downto 0),
      reset => reset_0_1,
      value(14 downto 0) => quadratur_decoder_1_value(14 downto 0)
    );
state_machine_0: component design_1_state_machine_0_0
     port map (
      clk_in => clk_in_0_1,
      data_out(14 downto 0) => state_machine_0_data_out(14 downto 0),
      frame_choice => xlslice_0_Dout(0),
      index_ctrl_A => index_ctrl_A_0_1,
      index_ctrl_B => index_ctrl_B_0_1,
      motor_choice => xlslice_1_Dout(0),
      motor_ctrl_A => state_machine_0_motor_ctrl_A,
      motor_ctrl_B => state_machine_0_motor_ctrl_B,
      quad_enc_A(14 downto 0) => quadratur_decoder_0_value(14 downto 0),
      quad_enc_B(14 downto 0) => quadratur_decoder_1_value(14 downto 0),
      request_type => xlslice_2_Dout(0)
    );
xlconcat_0: component design_1_xlconcat_0_2
     port map (
      In0(0) => JB0_Dout(0),
      In1(0) => JB1_Dout(0),
      dout(1 downto 0) => xlconcat_0_dout1(1 downto 0)
    );
xlconcat_1: component design_1_xlconcat_0_3
     port map (
      In0(0) => JC0_Dout(0),
      In1(0) => JC1_Dout(0),
      dout(1 downto 0) => xlconcat_1_dout(1 downto 0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => B"0000000000000000",
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component design_1_xlslice_0_1
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component design_1_xlslice_0_2
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component design_1_xlslice_2_0
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(8 downto 0) => xlslice_3_Dout(8 downto 0)
    );
end STRUCTURE;
