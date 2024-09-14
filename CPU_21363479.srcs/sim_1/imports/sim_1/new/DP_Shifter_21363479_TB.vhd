----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 13:56:05
-- Design Name: 
-- Module Name: DP_Shifter_21363479_TB - Sim
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

entity DP_Shifter_21363479_TB is
--  Port ( );
end DP_Shifter_21363479_TB;

architecture Sim of DP_Shifter_21363479_TB is

component DP_Shifter_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C : out std_logic
          );
end component DP_Shifter_21363479;

Signal B_TB : std_logic_vector (31 downto 0);
Signal S1_TB, S2_TB : std_logic;
Signal G_TB : std_logic_vector (31 downto 0);
Signal C_TB : std_logic;

constant PERIOD : time := 20ns;

begin
    uut: DP_Shifter_21363479 port map
    (
        B => B_TB,
        S1 => S1_TB,
        S2 => S2_TB,
        G => G_TB,
        C => C_TB
    );
    
    stim_proc : process
    
begin
    wait for PERIOD;
    B_TB <= "00000001010001011111101100010111";
    
    wait for PERIOD;
    S1_TB <= '0';
    S2_TB <= '0';
    
    wait for PERIOD;
    S1_TB <= '0';
    S2_TB <= '1';
    
    wait for PERIOD;
    S1_TB <= '1';
    S2_TB <= '0';
    
    wait for PERIOD;
    B_TB <= "10000001010001011111101100010110";
    
    wait for PERIOD;
    S1_TB <= '0';
    S2_TB <= '1';
    
    wait for PERIOD;
    S1_TB <= '1';
    S2_TB <= '0';


    end process;
    
end Sim;
