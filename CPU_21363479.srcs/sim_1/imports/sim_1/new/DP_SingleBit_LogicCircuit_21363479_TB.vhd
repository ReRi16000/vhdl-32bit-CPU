----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 16:27:51
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_21363479_TB - Sim
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

entity DP_SingleBit_LogicCircuit_21363479_TB is
--  Port ( );
end DP_SingleBit_LogicCircuit_21363479_TB;

architecture Sim of DP_SingleBit_LogicCircuit_21363479_TB is

component DP_SingleBit_LogicCircuit_21363479 is
    Port (A, B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end component DP_SingleBit_LogicCircuit_21363479;

    Signal A_TB, B_TB : std_logic;
    Signal s_TB : std_logic_vector (1 downto 0);
    Signal z_TB : std_logic;
    
    constant PERIOD : time := 20ns;
--gamering
begin

    uut: DP_SingleBit_LogicCircuit_21363479 port map
         (
           A => A_TB,
           B => B_TB,
           s => s_TB,
           z => z_TB
         );
         
    stim_proc: process
         
begin

    wait for PERIOD;
    s_TB <= "00"; --AND
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '1';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "01"; --OR
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '1';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "10"; --XOR
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '1';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '1';
    
    wait for PERIOD;
    s_TB <= "11"; --NOT A
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '0';
    B_TB <= '1';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '0';
    
    wait for PERIOD;
    A_TB <= '1';
    B_TB <= '1';
    
    end process;
    
end Sim;
