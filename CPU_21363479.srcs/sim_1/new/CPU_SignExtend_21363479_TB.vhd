----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 15:02:34
-- Design Name: 
-- Module Name: CPU_SignExtend_21363479_TB - Sim
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

entity CPU_SignExtend_21363479_TB is
--  Port ( );
end CPU_SignExtend_21363479_TB;

architecture Sim of CPU_SignExtend_21363479_TB is

component CPU_SignExtend_21363479 is
    Port (
          Input : in std_logic_vector (9 downto 0);
          Output : out std_logic_vector (31 downto 0)
         );
end component CPU_SignExtend_21363479; 

Signal Input_TB : std_logic_vector (9 downto 0);
Signal Output_TB : std_logic_vector (31 downto 0);

begin

    uut: CPU_SignExtend_21363479 port map
    (
        Input => Input_TB,
        Output => Output_TB
    );
    
    stim_proc : process
    begin
    
        wait for 5ns;
        Input_TB <= "0011011110";
        
        wait for 5ns;
        Input_TB <= "1001001000";
        
        wait for 5ns;
        Input_TB <= "0000000000";
        
        wait for 5ns;
        Input_TB <= "1111111111";
        
   end process;

end Sim;
