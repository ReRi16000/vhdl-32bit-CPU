----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 16:47:25
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_21363479_TB - Sim
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

entity DP_SingleBit_B_Logic_21363479_TB is
--    Port ( );
end DP_SingleBit_B_Logic_21363479_TB;

architecture Sim of DP_SingleBit_B_Logic_21363479_TB is

component DP_SingleBit_B_Logic_21363479 is
    Port (B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
         );
end component DP_SingleBit_B_Logic_21363479;

    Signal B_TB : std_logic;
    Signal s_TB : std_logic_vector (1 downto 0);
    Signal z_TB : std_logic;

    constant PERIOD : time := 20ns;
begin

    uut: DP_SingleBit_B_Logic_21363479 port map
         (
           B => B_TB,
           s => s_TB,
           z => z_TB
         );
         
    stim_proc: process
         
begin

    wait for PERIOD;
    s_TB <= "00"; --all 0s
    
    wait for PERIOD;
    B_TB <= '0';
    
    wait for PERIOD;
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "01"; --no change
    
    wait for PERIOD;
    B_TB <= '0';
    
    wait for PERIOD;
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "10"; --invert
    
    wait for PERIOD;
    B_TB <= '0';
    
    wait for PERIOD;
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "11"; --all 1s
    
    wait for PERIOD;
    B_TB <= '0';
    
    wait for PERIOD;
    B_TB <= '1';
    
    end process;
    

end Sim;
