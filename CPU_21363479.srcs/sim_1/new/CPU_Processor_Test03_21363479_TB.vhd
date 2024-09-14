----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2023 21:42:44
-- Design Name: 
-- Module Name: CPU_Processor_Test03_21363479_TB - Sim
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

entity CPU_Processor_Test03_21363479_TB is
--  Port ( );
end CPU_Processor_Test03_21363479_TB;

architecture Sim of CPU_Processor_Test03_21363479_TB is

component  CPU_Processor_Test03_21363479 is
    Port (FS : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW, MW, MM, LoadFlags, Reset_C, Reset_N, Reset_V, Reset_Z, IL, PI, PL,
          Reset : in std_logic;
          StatusVector : out std_logic_vector (3 downto 0);
          Opcode : out std_logic_vector (16 downto 0) );
end component CPU_Processor_Test03_21363479;

Signal FS_TB : std_logic_vector (4 downto 0);                                               
Signal TA_TB, TB_TB, TD_TB, StatusVector_TB : std_logic_vector (3 downto 0);                                       
Signal MB_TB, MD_TB, Clock_TB, RW_TB, MW_TB, MM_TB, LoadFlags_TB, Reset_C_TB, Reset_N_TB, Reset_V_TB,
                                                   Reset_Z_TB, IL_TB, PI_TB, PL_TB, Reset_TB : std_logic := '0';                             
Signal Opcode_TB : std_logic_vector (16 downto 0);   

constant PERIOD : time := 300ns;                                    

begin

    uut: CPU_Processor_Test03_21363479 port map
    (
        FS          => FS_TB,             
        TA          => TA_TB,
        TB          => TB_TB,
        TD          => TD_TB,    
        MB          => MB_TB,
        MD          => MD_TB,
        Clock       => Clock_TB,
        RW          => RW_TB,
        MW          => MW_TB,
        MM          => MM_TB,
        LoadFlags   => LoadFlags_TB,
        Reset_C     => Reset_C_TB,
        Reset_N     => Reset_N_TB,
        Reset_V     => Reset_V_TB,
        Reset_Z     => Reset_Z_TB,
        IL          => IL_TB,
        PI          => PI_TB,
        Pl          => Pl_TB,
        Reset       => Reset_TB,                                                  
        StatusVector => StatusVector_TB,                                   
        Opcode => Opcode_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    stim_proc : process
    
    begin
    
        wait for PERIOD; -- RAM03
        PI_TB <= '0';
        PL_TB <= '0';
        MM_TB <= '1';
        Reset_TB <= '1';
        
        wait for PERIOD; 
        Reset_TB <= '0'; -- we allow the previous set of instructions to resolve first
        IL_TB <= '1';
        
        wait for PERIOD; -- RAM04
        PI_TB <= '1';
        
        wait for PERIOD; 
        PI_TB <= '0'; -- we allow the previous set of instructions to resolve first
        
        wait for PERIOD; -- RAM05
        PI_TB <= '1';
        
        wait for PERIOD; 
        PI_TB <= '0'; -- we allow the previous set of instructions to resolve first
        
        wait for PERIOD; -- RAM06
        PI_TB <= '1';
        
        wait for PERIOD; 
        PI_TB <= '0'; -- we allow the previous set of instructions to resolve first
        
        wait for PERIOD; -- RAM07
        PI_TB <= '1';
        
        wait for PERIOD; 
        PI_TB <= '0'; -- we allow the previous set of instructions to resolve first
        
        wait for PERIOD; -- RAM08, the displacement back to RAM03
        PI_TB <= '1';
        PL_TB <= '0';
        
        wait for PERIOD;
        PI_TB <= '0';
        
        wait for PERIOD;
        PL_TB <= '1';
        
        wait for PERIOD;
        PL_TB <= '0';
        wait for PERIOD;
        wait for PERIOD;
        
   
    end process;
    
end Sim;
