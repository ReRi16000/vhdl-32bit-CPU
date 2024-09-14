----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2023 21:26:12
-- Design Name: 
-- Module Name: CPU_Processor_Test02_21363479_TB - Sim
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

entity CPU_Processor_Test02_21363479_TB is
--  Port ( );
end CPU_Processor_Test02_21363479_TB;

architecture Sim of CPU_Processor_Test02_21363479_TB is

component CPU_Processor_Test02_21363479 is
    Port (IR_IN, InstAddress : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW, MW, MM, LoadFlags, Reset_C, Reset_N, Reset_V, Reset_Z : in std_logic;
          StatusVector : out std_logic_vector (3 downto 0) );
end component CPU_Processor_Test02_21363479;

Signal IR_IN_TB, InstAddress_TB : std_logic_vector (31 downto 0);
Signal FS_TB, DR_TB, SA_TB, SB_TB : std_logic_vector (4 downto 0);
Signal TA_TB, TB_TB, TD_TB, StatusVector_TB : std_logic_vector (3 downto 0);
Signal MB_TB, MD_TB, Clock_TB, RW_TB, MW_TB, MM_TB, LoadFlags_TB, Reset_C_TB, Reset_N_TB, 
                                                                    Reset_V_TB, Reset_Z_TB : std_logic := '0';

constant PERIOD : time := 300ns;

begin

    uut: CPU_Processor_Test02_21363479 port map
    (
        IR_IN => IR_IN_TB,
        InstAddress => InstAddress_TB,
        FS => FS_TB,
        DR => DR_TB,
        SA => SA_TB,
        SB => SB_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        MB => MB_TB,
        MD => MD_TB,
        Clock => Clock_TB,
        RW => RW_TB,
        MW => MW_TB,
        MM => MM_TB,
        LoadFlags => LoadFlags_TB,
        Reset_C => Reset_C_TB,
        Reset_N => Reset_N_TB,
        Reset_V => Reset_V_TB,
        Reset_Z => Reset_Z_TB,
        StatusVector => StatusVector_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    
    stim_proc : process
    
    begin
    
        --READYING VALUES IN RAM
        wait for PERIOD; 
        --send -1 through the DP
        IR_IN_TB <= "11111111111111111111111111111111"; --write from IR_IN to RAM
        MB_TB <= '1';        
        --put the -1 in RAM address 0
        InstAddress_TB <= "00000000000000000000000000000000";
        MM_TB <= '1';
        MW_TB <= '1';
        
        wait for PERIOD; 
        --send 2147483647 through the DP
        IR_IN_TB <= "01111111111111111111111111111111"; --write from IR_IN to RAM
        --put the 2147483647 in RAM address 1
        InstAddress_TB <= "00000000000000000000000000000001";
        
        wait for PERIOD;----------------------------------------------
        --write from the RAM to a register
        MW_TB <= '0';
        InstAddress_TB <= "00000000000000000000000000000000";
        MD_TB <= '1'; 
        MB_TB <= '0';
        RW_TB <= '1';
        DR_TB <= "00000";
        SA_TB <= "00000";
        SB_TB <= "00000";
        TA_TB <= "0000";
        TB_TB <= "0000";
        TD_TB <= "0000";
        FS_TB <= "00001"; --output A+1, which will set the C and Z flags
        
        wait for PERIOD;
        LoadFlags_TB <= '1';
        
        wait for PERIOD; --reset C and Z
        Reset_C_TB <= '1';
        Reset_Z_TB <= '1';
        
        wait for PERIOD;
        --write from the RAM to a register
        InstAddress_TB <= "00000000000000000000000000000001"; --we put the 2147483647 in Reg01
        FS_TB <= "00001";
        Reset_C_TB <= '0';
        Reset_Z_TB <= '0';
        
        wait for PERIOD;
        --set the V and N flags
        
        wait for PERIOD;
        Reset_V_TB <= '1';
        Reset_N_TB <= '1';
        
    
    end process;
    
    
    


end Sim;
