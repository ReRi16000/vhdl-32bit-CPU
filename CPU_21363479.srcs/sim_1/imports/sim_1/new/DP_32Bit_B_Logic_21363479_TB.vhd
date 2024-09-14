----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 18:57:19
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_21363479_TB - Sim
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

entity DP_32Bit_B_Logic_21363479_TB is
--  Port ( );
end DP_32Bit_B_Logic_21363479_TB;

architecture Sim of DP_32Bit_B_Logic_21363479_TB is

component DP_32Bit_B_Logic_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          Y : out std_logic_vector (31 downto 0) 
         );
end component DP_32Bit_B_Logic_21363479;

    Signal B_TB : std_logic_vector (31 downto 0) := "00000001010001011111101100010111";
    Signal S0_TB, S1_TB : std_logic;
    Signal Y_TB : std_logic_vector (31 downto 0);
    
    constant PERIOD : time := 60ns;

begin
    uut: DP_32Bit_B_Logic_21363479 port map 
        (
         B => B_TB,
         S0 => S0_TB,
         S1 => S1_TB,
         Y => Y_TB
        );
        
    stim_proc : process

begin

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
