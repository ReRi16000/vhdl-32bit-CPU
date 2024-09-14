----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 19:19:21
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_21363479_TB - Sim
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

entity DP_32Bit_LogicCircuit_21363479_TB is
--  Port ( );
end DP_32Bit_LogicCircuit_21363479_TB;

architecture Sim of DP_32Bit_LogicCircuit_21363479_TB is

component DP_32Bit_LogicCircuit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          G : out std_logic_vector (31 downto 0)
          );
end component DP_32Bit_LogicCircuit_21363479;

    Signal A_TB, B_TB : std_logic_vector (31 downto 0);
    Signal S0_TB, S1_TB : std_logic;
    Signal G_TB : std_logic_vector (31 downto 0);

    constant PERIOD : time := 20ns;
    
begin

    uut: DP_32Bit_LogicCircuit_21363479 port map
         (
           A => A_TB,
           B => B_TB,
           S0 => S0_TB,
           S1 => S1_TB,
           G => G_TB
         );
         
    stim_proc: process
         
begin

    wait for PERIOD;
    A_TB <= "00100001001101100011010001111001"; --0x21363479
    B_TB <= "11011010110001101000010000100001"; --0xDAC68421
    
    wait for PERIOD;
    S0_TB <= '0';
    S1_TB <= '0';
    
    wait for PERIOD;
    S0_TB <= '0';
    S1_TB <= '1';
    
    wait for PERIOD;
    S0_TB <= '1';
    S1_TB <= '0';
    
    wait for PERIOD;
    S0_TB <= '1';
    S1_TB <= '1';
    
    end process;

end Sim;
