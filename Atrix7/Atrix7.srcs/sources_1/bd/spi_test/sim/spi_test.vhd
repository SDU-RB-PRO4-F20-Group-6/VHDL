--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri May 15 09:28:03 2020
--Host        : DESKTOP-FP1UNT8 running 64-bit major release  (build 9200)
--Command     : generate_target spi_test.bd
--Design      : spi_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_test is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    sclk : in STD_LOGIC;
    ss : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of spi_test : entity is "spi_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=spi_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of spi_test : entity is "spi_test.hwdef";
end spi_test;

architecture STRUCTURE of spi_test is
  component spi_test_SPI_0_0 is
  port (
    clk_in : in STD_LOGIC;
    spi_sclk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    spi_ss_n : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    spi_data_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    spi_data_out : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component spi_test_SPI_0_0;
  component spi_test_state_machine_0_0 is
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
  end component spi_test_state_machine_0_0;
  component spi_test_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component spi_test_xlconcat_0_0;
  component spi_test_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component spi_test_xlslice_0_0;
  component spi_test_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component spi_test_xlslice_0_4;
  component spi_test_xlslice_0_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component spi_test_xlslice_0_5;
  component spi_test_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component spi_test_xlconstant_0_0;
  component spi_test_val_0x0A0A_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component spi_test_val_0x0A0A_0;
  component spi_test_val_0x0A0A_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component spi_test_val_0x0A0A_1;
  component spi_test_val_0x0A0A_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component spi_test_val_0x0A0A_2;
  component spi_test_Evenparity_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    parity : out STD_LOGIC
  );
  end component spi_test_Evenparity_0_0;
  signal Evenparity_0_parity : STD_LOGIC;
  signal SPI_0_spi_data_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_0_spi_miso : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal spi_mosi_0_1 : STD_LOGIC;
  signal spi_sclk_0_1 : STD_LOGIC;
  signal spi_ss_n_0_1 : STD_LOGIC;
  signal state_machine_0_data_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal val_0x0A0A1_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal val_0x0A0A2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal val_0x0A0A3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_state_machine_0_motor_ctrl_A_UNCONNECTED : STD_LOGIC;
  signal NLW_state_machine_0_motor_ctrl_B_UNCONNECTED : STD_LOGIC;
begin
  clk_in_0_1 <= clk;
  led(15 downto 0) <= xlconcat_0_dout(15 downto 0);
  miso <= SPI_0_spi_miso;
  spi_mosi_0_1 <= mosi;
  spi_sclk_0_1 <= sclk;
  spi_ss_n_0_1 <= ss;
Evenparity_0: component spi_test_Evenparity_0_0
     port map (
      data(14 downto 0) => state_machine_0_data_out(14 downto 0),
      parity => Evenparity_0_parity
    );
SPI_0: component spi_test_SPI_0_0
     port map (
      clk_in => clk_in_0_1,
      spi_data_in(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      spi_data_out(15 downto 0) => xlconcat_0_dout(15 downto 0),
      spi_miso => SPI_0_spi_miso,
      spi_mosi => spi_mosi_0_1,
      spi_sclk => spi_sclk_0_1,
      spi_ss_n => spi_ss_n_0_1
    );
state_machine_0: component spi_test_state_machine_0_0
     port map (
      clk_in => clk_in_0_1,
      data_out(14 downto 0) => state_machine_0_data_out(14 downto 0),
      frame_choice => xlslice_0_Dout(0),
      index_ctrl_A => val_0x0A0A2_dout(0),
      index_ctrl_B => val_0x0A0A3_dout(0),
      motor_choice => xlslice_1_Dout(0),
      motor_ctrl_A => NLW_state_machine_0_motor_ctrl_A_UNCONNECTED,
      motor_ctrl_B => NLW_state_machine_0_motor_ctrl_B_UNCONNECTED,
      parity_check => '0',
      quad_enc_A(14 downto 0) => xlconstant_0_dout(14 downto 0),
      quad_enc_B(14 downto 0) => val_0x0A0A1_dout(14 downto 0),
      request_type => xlslice_2_Dout(0)
    );
val_0: component spi_test_val_0x0A0A_2
     port map (
      dout(0) => val_0x0A0A3_dout(0)
    );
val_1: component spi_test_val_0x0A0A_1
     port map (
      dout(0) => val_0x0A0A2_dout(0)
    );
val_2: component spi_test_val_0x0A0A_0
     port map (
      dout(14 downto 0) => val_0x0A0A1_dout(14 downto 0)
    );
val_3: component spi_test_xlconstant_0_0
     port map (
      dout(14 downto 0) => xlconstant_0_dout(14 downto 0)
    );
xlconcat_0: component spi_test_xlconcat_0_0
     port map (
      In0(0) => Evenparity_0_parity,
      In1(14 downto 0) => state_machine_0_data_out(14 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlslice_0: component spi_test_xlslice_0_0
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component spi_test_xlslice_0_4
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component spi_test_xlslice_0_5
     port map (
      Din(15 downto 0) => SPI_0_spi_data_in(15 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
end STRUCTURE;
