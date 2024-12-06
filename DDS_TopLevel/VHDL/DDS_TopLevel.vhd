----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Farid Mabrouk
-- 
-- Create Date: 01/20/2022 04:13:57 PM
-- Design Name: 
-- Module Name: TopLevel - Behavioral
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
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity DDS_Sweep_TopLevel is
port (
   clk                 : in std_logic := '0';  --system cock running at 399.68MHz
   ce                  : in std_logic; 
   reset               : in std_logic; 
   s_axis_phase_tready : OUT STD_LOGIC;
   m_axis_phase_tdata  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   m_axis_data_tdata   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
); 
end DDS_Sweep_TopLevel;

architecture Behavioral of DDS_Sweep_TopLevel is

-- Define a 2-bit counter for dividing the clock by 4
signal clk_counter2 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";  -- 2-bit counter (max value = 3)

signal Counter             : integer range 0 to 399840 := 0;   -- 19 bits for update counter used to change the frequency

--constant UpdateFreqCounter : integer := 99840;  --about one miliseconds with DDS_clk


signal s_axis_phase_tvalid_sig : std_logic :='0'; 
signal s_axis_phase_tdata_Sig  : STD_LOGIC_VECTOR(31 DOWNTO 0):="00000000000000000000000000000000"; 
signal m_axis_data_tready_Sig  : std_logic:='0'; 
signal m_axis_data_tvalid_Sig  : std_logic; 


 -- State machine state
 signal state : integer := 0;
 
 -- Declare signals instead of variables
signal PhaseIncrConstant : integer := 13450;       -- Initialize PhaseIncrConstant
signal freq_phase_incr   : integer := 0;           -- Initialize freq_phase_incr
signal FreqSweepCnt      : integer := 1;           -- Initialize FreqSweepCnt
signal period_wait_cnt   : integer := 0;           -- Initialize period_wait_cnt
signal chirp_loop_cntr   : integer := 0;           -- Initialize chirp_loop_cntr
signal freq_period       : integer := 20000;       -- Initialize freq_period


------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT dds_compiler_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
    
begin

DDS_Sweep : dds_compiler_0
  PORT MAP (
    aclk => clk,
    s_axis_phase_tvalid => s_axis_phase_tvalid_Sig,
    s_axis_phase_tdata => s_axis_phase_tdata_Sig,
    m_axis_data_tvalid => m_axis_data_tvalid_Sig,
    m_axis_data_tdata => m_axis_data_tdata
    
  );
    

  -- Frequency Sweep Process (Update frequency based on counter)
  process(clk, reset)
  begin
    if reset = '1' then
        -- Reset the frequency sweep counter and output clock signal
        FreqSweepCnt <= 0; -- this keeps track of how may frequencies generated so far
        s_axis_phase_tvalid_sig <= '0'; 
        m_axis_data_tready_Sig  <= '0';
        --s_axis_phase_tready <='0'; 
        
       s_axis_phase_tvalid_sig <='0'; 
       s_axis_phase_tdata_Sig  <="00000000000000000000000000000000"; 
       m_axis_data_tready_Sig <= '0'; 
      -- m_axis_data_tvalid_Sig  <='0'; 
  
 
       state <= 0;
         
    elsif rising_edge(clk) then
    
      case state is
        
      when 0 =>
            s_axis_phase_tvalid_sig <= '0';
            m_axis_data_tready_Sig  <= '0';
            period_wait_cnt   <= 0;
            chirp_loop_cntr   <= 0; 
            state <= 1;
            
       when 1 =>
            Freq_phase_incr <= FreqSweepCnt * PhaseIncrConstant;  -- gives us the value to load to the DDS
            state <= 2;

       when 2 =>
             s_axis_phase_tvalid_sig <= '1';                  ---per PG141 - tvalid is set before tready goes high
             state <= 3;
             
        when 3 =>
             m_axis_data_tready_Sig  <= '1';
             s_axis_phase_tdata_Sig <= std_logic_vector(resize(to_unsigned(Freq_phase_incr, 32), 32)); 
             state <= 4;
           
       when 4 =>
            if (period_wait_cnt >= freq_period) then 
                period_wait_cnt <= 0;
                chirp_loop_cntr <= chirp_loop_cntr + 1; 
                state <= 5;   --keep track of loop counter
             else
                period_wait_cnt <= period_wait_cnt + 1;
                state <= 4;
             end if; 
              
       when 5 =>
       
          if(FreqSweepCnt = 101) then --instead of 26
               chirp_loop_cntr <= 0;
               freq_phase_incr <= 0; 
               PhaseIncrConstant <= 13450; --2684354; --   3361; 
               FreqSweepCnt      <= 1;
               freq_phase_incr   <= 0;               
               state <= 0;
           else
              chirp_loop_cntr <= chirp_loop_cntr + 1;
              FreqSweepCnt <= FreqSweepCnt + 1; --update for next cyc                                      
              s_axis_phase_tvalid_sig <= '1';  -- Signal data not valid
              m_axis_data_tready_Sig  <= '1'; 
           
              state <= 0;
            
            end if; 
            
        when others =>
             state <= 0;
    end case;
  end if; 

  end process;

end Behavioral;
