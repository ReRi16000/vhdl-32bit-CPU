----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2023 22:03:00
-- Design Name: 
-- Module Name: CPU_Processor_Test04_21363479_TB - Sim
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

entity CPU_Processor_Test04_21363479_TB is
--  Port ( );
end CPU_Processor_Test04_21363479_TB;

architecture Sim of CPU_Processor_Test04_21363479_TB is

component CPU_Processor_Test04_21363479 is
    Port (FS : out std_logic_vector (4 downto 0);
          TA, TB, TD : out std_logic_vector (3 downto 0);
          MB, MD, RW, MW, MM, RC, RN, RV, RZ, IL, PI, PL, FL : out std_logic;
          Reset, Clock : in std_logic;
          StatusVector : in std_logic_vector (3 downto 0);
          Opcode : in std_logic_vector (16 downto 0)  );
end component CPU_Processor_Test04_21363479;

Signal FS_TB : std_logic_vector (4 downto 0);                                               
Signal TA_TB, TB_TB, TD_TB, StatusVector_TB : std_logic_vector (3 downto 0);                                       
Signal MB_TB, MD_TB, Clock_TB, RW_TB, MW_TB, MM_TB, FL_TB, RC_TB, RN_TB, RV_TB,
                                                       RZ_TB, IL_TB, PI_TB, PL_TB, Reset_TB : std_logic := '0';
Signal Opcode_TB : std_logic_vector (16 downto 0); 

constant PERIOD : time := 300ns;

begin

    uut: CPU_Processor_Test04_21363479 port map
    (
        FS => FS_TB,             
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,    
        MB => MB_TB,
        MD => MD_TB,
        Clock => Clock_TB,
        RW => RW_TB,
        MW => MW_TB,
        MM => MM_TB,
        FL => FL_TB,
        RC => RC_TB,
        RN => RN_TB,
        RV => RV_TB,
        RZ => RZ_TB,
        IL => IL_TB,
        PI => PI_TB,
        Pl => Pl_TB,
        Reset => Reset_TB,                                                  
        StatusVector => StatusVector_TB,                                   
        Opcode => Opcode_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    stim_proc : process
    
    begin
    
        wait for PERIOD;
        Reset_TB <= '1';
    
        wait for PERIOD;
        Reset_TB <= '0';
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD;
    
        wait for PERIOD; --DONE--
        
        wait for PERIOD;
        wait for PERIOD;
    
    end process;

end Sim;
