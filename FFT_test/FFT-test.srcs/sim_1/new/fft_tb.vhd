library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fft_tb is
end fft_tb;

architecture tb of fft_tb is

  -- Clock
  signal clk : std_logic := '0';

  -- FFT Configuration signals
  signal s_axis_config_tdata  : std_logic_vector(7 downto 0);
  signal s_axis_config_tvalid : std_logic := '0';
  signal s_axis_config_tready : std_logic;

  -- FFT Data input signals
  signal s_axis_data_tdata    : std_logic_vector(63 downto 0) := (others => '0');
  signal s_axis_data_tvalid   : std_logic := '0';
  signal s_axis_data_tready   : std_logic;
  signal s_axis_data_tlast    : std_logic := '0';

  -- FFT Output signals
  signal m_axis_data_tdata    : std_logic_vector(79 downto 0);
  signal m_axis_data_tvalid   : std_logic;
  signal m_axis_data_tready   : std_logic := '1';
  signal m_axis_data_tlast    : std_logic;

  -- FFT Event signals
  signal event_frame_started        : std_logic;
  signal event_tlast_unexpected     : std_logic;
  signal event_tlast_missing        : std_logic;
  signal event_status_channel_halt  : std_logic;
  signal event_data_in_channel_halt : std_logic;
  signal event_data_out_channel_halt: std_logic;

begin

  -------------------------------------------------------------------
  -- Clock Generator (100 MHz approx, 10 ns period)
  -------------------------------------------------------------------
  clk_process: process
  begin
    clk <= '0'; wait for 5 ns;
    clk <= '1'; wait for 5 ns;
  end process;

  -------------------------------------------------------------------
  -- Instantiate FFT IP
  -------------------------------------------------------------------
  uut: entity work.xfft_0
    port map (
      aclk => clk,
      s_axis_config_tdata  => s_axis_config_tdata,
      s_axis_config_tvalid => s_axis_config_tvalid,
      s_axis_config_tready => s_axis_config_tready,
      s_axis_data_tdata    => s_axis_data_tdata,
      s_axis_data_tvalid   => s_axis_data_tvalid,
      s_axis_data_tready   => s_axis_data_tready,
      s_axis_data_tlast    => s_axis_data_tlast,
      m_axis_data_tdata    => m_axis_data_tdata,
      m_axis_data_tvalid   => m_axis_data_tvalid,
      m_axis_data_tready   => m_axis_data_tready,
      m_axis_data_tlast    => m_axis_data_tlast,
      event_frame_started        => open,
      event_tlast_unexpected     => open,
      event_tlast_missing        => open,
      event_status_channel_halt  => open,
      event_data_in_channel_halt => open,
      event_data_out_channel_halt=> open
    );

  -------------------------------------------------------------------
  -- Apply FFT Configuration (Forward + Unscaled)
  -------------------------------------------------------------------
  config_process: process
  begin
    wait for 10 ns;  -- ??? ??? ???? ????
    s_axis_config_tdata  <= x"01";  -- ???0=Forward, ???1-7=Unscaled
    s_axis_config_tvalid <= '1';
    wait for 10 ns;
    s_axis_config_tvalid <= '0';
    wait;
  end process;

end tb;
