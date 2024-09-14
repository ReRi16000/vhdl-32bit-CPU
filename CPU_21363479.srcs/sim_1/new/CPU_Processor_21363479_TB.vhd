----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2023 05:41:12
-- Design Name: 
-- Module Name: CPU_Processor_21363479_TB - Sim
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

entity CPU_Processor_21363479_TB is
--  Port ( );
end CPU_Processor_21363479_TB;

architecture Sim of CPU_Processor_21363479_TB is

component CPU_Processor_21363479 is
    Port (Clock, Reset : in std_logic);
end component CPU_Processor_21363479;

Signal Clock_TB, Reset_TB : std_logic := '0';

constant PERIOD : time := 300ns;

begin

    OneLastHoorah: CPU_Processor_21363479 port map(Clock => Clock_TB, Reset => Reset_TB);
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    
    stim_proc : process
    
    begin
    
        wait for PERIOD;
        Reset_TB <= '1';
        
        wait for PERIOD;
        Reset_TB <= '0';
        
        wait for 1000000ns;
    
    end process;


end Sim;
