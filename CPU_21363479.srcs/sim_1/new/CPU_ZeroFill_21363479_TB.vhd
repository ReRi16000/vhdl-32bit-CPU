----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 15:54:12
-- Design Name: 
-- Module Name: CPU_ZeroFill_21363479_TB - Sim
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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_ZeroFill_21363479_TB is
--  Port ( );
end CPU_ZeroFill_21363479_TB;

architecture Sim of CPU_ZeroFill_21363479_TB is

component CPU_ZeroFill_21363479 is
    Port (SB : in std_logic_vector (4 downto 0);
          MuxB : out std_logic_vector (31 downto 0) := "00000000000000000000000000000000"
         );
end component CPU_ZeroFill_21363479;

Signal SB_TB : std_logic_vector (4 downto 0);
Signal MuxB_TB :  std_logic_vector (31 downto 0);

begin

    uut: CPU_ZeroFill_21363479 port map
    (
        SB => SB_TB,
        MuxB => MuxB_TB
    );
    
    stim_proc : process
    
    begin
    
    wait for 5ns;
    SB_TB <= "11111";
    
    wait for 5ns;
    SB_TB <= "01110";
    
    wait for 5ns;
    SB_TB <= "11001";
    
    wait for 5ns;
    SB_TB <= "00110";
    
    wait for 5ns;
    SB_TB <= "00000";
    
    end process;


end Sim;
