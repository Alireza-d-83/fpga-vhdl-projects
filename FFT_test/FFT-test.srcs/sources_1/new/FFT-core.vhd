----------------------------------------------------------------------------------
-- Simple FFT Test
-- Applies 64 constant inputs to FFT core for test
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FFT_core is
  Port(
    clk      : in  std_logic;
    rst      : in  std_logic;
    data_out_re  : out  std_logic_vector(17 downto 0);
    data_out_im : out std_logic_vector(17 downto 0);
    data_in_fft_re: out std_logic_vector(17 downto 0);
    data_in_fft_im: out std_logic_vector(17 downto 0)
  );
end FFT_core;

architecture Behavioral of FFT_core is

  COMPONENT xfft_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    m_axis_data_tuser : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END COMPONENT;

  signal aresetn                   : std_logic := '0';
  signal s_axis_config_tdata       : std_logic_vector(7 downto 0) := (others => '0');
  signal s_axis_config_tvalid      : std_logic := '0';
  signal s_axis_config_tready      : std_logic;
  signal s_axis_data_tdata         : std_logic_vector(47 downto 0) := (others => '0');
  signal s_axis_data_tvalid        : std_logic := '0';
  signal s_axis_data_tready        : std_logic;
  signal s_axis_data_tlast         : std_logic := '0';
  signal m_axis_data_tdata         : std_logic_vector(47 downto 0);
  signal m_axis_data_tvalid        : std_logic;
  signal m_axis_data_tready        : std_logic := '1';
  signal m_axis_data_tlast         : std_logic;
  signal event_frame_started       : STD_LOGIC;
  signal event_tlast_unexpected    : STD_LOGIC;
  signal event_tlast_missing       : STD_LOGIC;
  signal event_status_channel_halt : STD_LOGIC;
  signal event_data_in_channel_halt : STD_LOGIC;
  signal event_data_out_channel_halt : STD_LOGIC;
  signal address : std_logic_vector(7 downto 0);
  signal counter : integer range 0 to 63 := 0;

  type ram is array(0 to 64) of std_logic_vector(17 downto 0);
  signal re_memory : ram;
  signal im_memory : ram;
  
  type data is array(0 to 31) of std_logic_vector(35 downto 0);
  
    signal fft_data : data := (        
x"10e4ff11a",x"1ab7c738e",x"fcbc822d1",x"12d47c2b4",x"f58f4016b",x"10a2ff4c1",x"f0a8ba8d4",x"fb933fe60",
x"f969c34fb",x"f0fd03fc4",x"fb973b72f",x"e220407fb",x"005dbb695",x"f85a3dd73",x"0c6a00e52",x"0279fd955",
x"ffaf3fc10",x"f5a0002ed",x"e980fa44e",x"f7aafd8dd",x"09a6c659a",x"fc2fffc87",x"f553bf8ca",x"f8ef41bd5",
x"eb7a416aa",x"ee19464ef",x"065ffd15f",x"fa5e80992",x"f5413f8c0",x"042fc0bc3",x"fa463de23",x"f09139ff8"
    );



begin


    process (clk)
        variable addr : std_logic_vector(5 downto 0);
    begin
        if rising_edge(clk) then
            if (m_axis_data_tvalid = '1') then
              
                addr := address(5 downto 0);
                
                re_memory(to_integer(unsigned(addr))) <= m_axis_data_tdata(17 downto 0);
                im_memory(to_integer(unsigned(addr))) <= m_axis_data_tdata(41 downto 24);
            end if;
        end if;
        
        
    end process;

  ---------------------------------------------------------------------
  -- FFT Core Instance
  ---------------------------------------------------------------------
your_instance_name : xfft_0
  PORT MAP (
    aclk => clk,
    s_axis_config_tdata => s_axis_config_tdata,
    s_axis_config_tvalid => s_axis_config_tvalid,
    s_axis_config_tready => s_axis_config_tready,
    s_axis_data_tdata => s_axis_data_tdata,
    s_axis_data_tvalid => s_axis_data_tvalid,
    s_axis_data_tready => s_axis_data_tready,
    s_axis_data_tlast => s_axis_data_tlast,
    m_axis_data_tdata => m_axis_data_tdata,
    m_axis_data_tuser => address,
    m_axis_data_tvalid => m_axis_data_tvalid,
    m_axis_data_tready => m_axis_data_tready,
    m_axis_data_tlast => m_axis_data_tlast,
    event_frame_started => event_frame_started,
    event_tlast_unexpected => event_tlast_unexpected,
    event_tlast_missing => event_tlast_missing,
    event_status_channel_halt => event_status_channel_halt,
    event_data_in_channel_halt => event_data_in_channel_halt,
    event_data_out_channel_halt => event_data_out_channel_halt
  );
  
  

  process(clk)
  begin

--    if s_axis_config_tready = '1' then
--      s_axis_config_tdata  <= (others => '0');
--      s_axis_config_tvalid <= '1';
--    else
--      s_axis_config_tvalid <= '0';
--    end if;
    if(rising_edge(clk)) then
        if s_axis_data_tready = '1' then
          s_axis_data_tvalid <= '1';
          
          if counter = 63 then
            s_axis_data_tlast <= '1';
          else
            s_axis_data_tlast <= '0';
          end if;
          if counter < 32 then
              s_axis_data_tdata  <= "000000" & FFT_data(counter)(17 downto 0) & "000000" & FFT_data(counter)(35 downto 18);
                                    
              data_in_fft_re <= FFT_data(counter)(35 downto 18);
              data_in_fft_im <= FFT_data(counter)(17 downto 0);
              counter <= counter + 1;
          else
              s_axis_data_tdata  <= (others => '0');
              counter <= counter + 1;
          end if;
          if s_axis_data_tlast = '1' then
            s_axis_data_tlast <= '0';
            s_axis_data_tvalid <= '1';
          end if;
        else
          s_axis_data_tvalid <= '0';
        end if;
    end if;
  end process;


end Behavioral;
