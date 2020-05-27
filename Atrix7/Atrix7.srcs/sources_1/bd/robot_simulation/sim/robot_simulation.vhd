--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 17 18:48:58 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target robot_simulation.bd
--Design      : robot_simulation
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity robot_simulation is
  port (
    JB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    JC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btnD : in STD_LOGIC;
    btnU : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of robot_simulation : entity is "robot_simulation,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=robot_simulation,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of robot_simulation : entity is "robot_simulation.hwdef";
end robot_simulation;

architecture STRUCTURE of robot_simulation is
  component robot_simulation_SPI_0_0 is
  port (
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component robot_simulation_SPI_0_0;
  component robot_simulation_quadratur_decoder_0_0 is
  port (
    clk_in : in STD_LOGIC;
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component robot_simulation_quadratur_decoder_0_0;
  component robot_simulation_state_machine_0_0 is
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
  end component robot_simulation_state_machine_0_0;
  component robot_simulation_quadratur_decoder_0_1 is
  port (
    clk_in : in STD_LOGIC;
    encoder : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    value : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component robot_simulation_quadratur_decoder_0_1;
  component robot_simulation_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_0_0;
  component robot_simulation_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_0_1;
  component robot_simulation_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_0_2;
  component robot_simulation_Evenparity_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    parity : out STD_LOGIC
  );
  end component robot_simulation_Evenparity_0_0;
  component robot_simulation_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component robot_simulation_xlconcat_0_0;
  component robot_simulation_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_2_0;
  component robot_simulation_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_3_0;
  component robot_simulation_xlslice_3_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_3_1;
  component robot_simulation_xlslice_3_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component robot_simulation_xlslice_3_2;
  component robot_simulation_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component robot_simulation_xlconcat_1_0;
  component robot_simulation_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component robot_simulation_xlconcat_1_1;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Din_0_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Evenparity_0_parity : STD_LOGIC;
  signal SPI_0_spi_data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_0_spi_miso : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal index_ctrl_A_0_1 : STD_LOGIC;
  signal index_ctrl_B_0_1 : STD_LOGIC;
  signal quadratur_decoder_0_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal quadratur_decoder_1_value : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal spi_mosi_0_1 : STD_LOGIC;
  signal spi_sclk_0_1 : STD_LOGIC;
  signal spi_ss_n_0_1 : STD_LOGIC;
  signal state_machine_0_data_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_state_machine_0_motor_ctrl_A_UNCONNECTED : STD_LOGIC;
  signal NLW_state_machine_0_motor_ctrl_B_UNCONNECTED : STD_LOGIC;
begin
  Din_0_1(7 downto 0) <= JB(7 downto 0);
  Din_0_2(7 downto 0) <= JC(7 downto 0);
  clk_in_0_1 <= clk;
  index_ctrl_A_0_1 <= btnU;
  index_ctrl_B_0_1 <= btnD;
  led(15 downto 0) <= xlconcat_0_dout(15 downto 0);
  miso <= SPI_0_spi_miso;
  spi_mosi_0_1 <= mosi;
  spi_sclk_0_1 <= sclk;
  spi_ss_n_0_1 <= ss;
Evenparity_0: component robot_simulation_Evenparity_0_0
     port map (
      data(14 downto 0) => state_machine_0_data_out(14 downto 0),
      parity => Evenparity_0_parity
    );
SPI_0: component robot_simulation_SPI_0_0
     port map (
      clk_in => clk_in_0_1,
      spi_data_in(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      spi_data_out(15 downto 0) => xlconcat_0_dout(15 downto 0),
      spi_miso => SPI_0_spi_miso,
      spi_mosi => spi_mosi_0_1,
      spi_sclk => spi_sclk_0_1,
      spi_ss_n => spi_ss_n_0_1
    );
quadratur_decoder_0: component robot_simulation_quadratur_decoder_0_0
     port map (
      clk_in => clk_in_0_1,
      encoder(1 downto 0) => xlconcat_1_dout(1 downto 0),
      reset => '0',
      value(14 downto 0) => quadratur_decoder_0_value(14 downto 0)
    );
quadratur_decoder_1: component robot_simulation_quadratur_decoder_0_1
     port map (
      clk_in => clk_in_0_1,
      encoder(1 downto 0) => xlconcat_2_dout(1 downto 0),
      reset => '0',
      value(14 downto 0) => quadratur_decoder_1_value(14 downto 0)
    );
state_machine_0: component robot_simulation_state_machine_0_0
     port map (
      clk_in => clk_in_0_1,
      data_out(14 downto 0) => state_machine_0_data_out(14 downto 0),
      frame_choice => xlslice_0_Dout(0),
      index_ctrl_A => index_ctrl_A_0_1,
      index_ctrl_B => index_ctrl_B_0_1,
      motor_choice => xlslice_1_Dout(0),
      motor_ctrl_A => NLW_state_machine_0_motor_ctrl_A_UNCONNECTED,
      motor_ctrl_B => NLW_state_machine_0_motor_ctrl_B_UNCONNECTED,
      parity_check => '0',
      quad_enc_A(14 downto 0) => quadratur_decoder_0_value(14 downto 0),
      quad_enc_B(14 downto 0) => quadratur_decoder_1_value(14 downto 0),
      request_type => xlslice_2_Dout(0)
    );
xlconcat_0: component robot_simulation_xlconcat_0_0
     port map (
      In0(0) => Evenparity_0_parity,
      In1(14 downto 0) => state_machine_0_data_out(14 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconcat_1: component robot_simulation_xlconcat_1_0
     port map (
      In0(0) => xlslice_5_Dout(0),
      In1(0) => xlslice_6_Dout(0),
      dout(1 downto 0) => xlconcat_1_dout(1 downto 0)
    );
xlconcat_2: component robot_simulation_xlconcat_1_1
     port map (
      In0(0) => xlslice_3_Dout(0),
      In1(0) => xlslice_4_Dout(0),
      dout(1 downto 0) => xlconcat_2_dout(1 downto 0)
    );
xlslice_0: component robot_simulation_xlslice_0_0
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component robot_simulation_xlslice_0_1
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component robot_simulation_xlslice_0_2
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component robot_simulation_xlslice_2_0
     port map (
      Din(7 downto 0) => Din_0_2(7 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
xlslice_4: component robot_simulation_xlslice_3_0
     port map (
      Din(7 downto 0) => Din_0_2(7 downto 0),
      Dout(0) => xlslice_4_Dout(0)
    );
xlslice_5: component robot_simulation_xlslice_3_1
     port map (
      Din(7 downto 0) => Din_0_1(7 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
xlslice_6: component robot_simulation_xlslice_3_2
     port map (
      Din(7 downto 0) => Din_0_1(7 downto 0),
      Dout(0) => xlslice_6_Dout(0)
    );
end STRUCTURE;
