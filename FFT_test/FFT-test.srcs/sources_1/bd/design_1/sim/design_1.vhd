--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Oct  8 20:59:52 2025
--Host        : DESKTOP-VEE6H17 running 64-bit major release  (build 9200)
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
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xfft_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_xfft_0_0;
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  signal clk_100MHz_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal reset_rtl_0_1 : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_xfft_0_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_100MHz_1 <= clk_100MHz;
  reset_rtl_0_1 <= reset_rtl_0;
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => clk_100MHz_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_rtl_0_1
    );
xfft_0: component design_1_xfft_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      event_data_in_channel_halt => NLW_xfft_0_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_xfft_0_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_xfft_0_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_xfft_0_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_xfft_0_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_xfft_0_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 0) => NLW_xfft_0_m_axis_data_tdata_UNCONNECTED(31 downto 0),
      m_axis_data_tlast => NLW_xfft_0_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '1',
      m_axis_data_tvalid => NLW_xfft_0_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(15 downto 0) => B"0000000000000000",
      s_axis_config_tready => NLW_xfft_0_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '0',
      s_axis_data_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_data_tlast => '0',
      s_axis_data_tready => NLW_xfft_0_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => '0'
    );
end STRUCTURE;
