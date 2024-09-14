----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2022 15:31:07
-- Design Name: 
-- Module Name: DP_FunctionalUnit_21363479_TB - Sim
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

entity DP_FunctionalUnit_21363479_TB is
--  Port ( );
end DP_FunctionalUnit_21363479_TB;

architecture Sim of DP_FunctionalUnit_21363479_TB is

component DP_FunctionalUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          FS : in std_logic_vector (4 downto 0);
          F : out std_logic_vector (31 downto 0);
          C, N, Z, V : out std_logic
         );
end component DP_FunctionalUnit_21363479;

    Signal A_TB, B_TB : std_logic_vector (31 downto 0);
    Signal FS_TB : std_logic_vector (4 downto 0);
    Signal F_TB : std_logic_vector (31 downto 0);
    Signal C_TB, N_TB, Z_TB, V_TB : std_logic;
    
    constant PERIOD : time := 250ns;

begin
    uut: DP_FunctionalUnit_21363479 port map (
       A => A_TB,
       B => B_TB,
       FS => FS_TB,
       F => F_TB,
       C => C_TB,
       N => N_TB,
       Z => Z_TB,
       V => V_TB
       );

 stim_proc: process
 
begin
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "01110";--not(A)
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00001";--A + 1
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "01100";--A XOR B
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00000";--A
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "01010";--A OR B
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "11000";--slB
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "01000";--A AND B
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "10000";--B
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00110";--A - 1
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00111";--A
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00101";--A + not(B) + 1
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "10100";--srB
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00100";--A + not(B)
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00011";--A + B + 1
    
    wait for PERIOD;
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001010001011111101100100000";
    FS_TB <= "00010";--A + B
   
   

 end process;
end Sim;
