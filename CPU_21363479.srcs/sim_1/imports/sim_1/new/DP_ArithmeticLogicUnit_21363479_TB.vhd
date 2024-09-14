----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 21:21:31
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_21363479_TB - Sim
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

entity DP_ArithmeticLogicUnit_21363479_TB is
--  Port ( );
end DP_ArithmeticLogicUnit_21363479_TB;

architecture Sim of DP_ArithmeticLogicUnit_21363479_TB is

component DP_ArithmeticLogicUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          C_IN, S0, S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C, V : out std_logic
         );
end component DP_ArithmeticLogicUnit_21363479;

    Signal A_TB, B_TB, G_TB : std_logic_vector (31 downto 0);
    Signal C_IN_TB, S0_TB, S1_TB, S2_TB, C_TB, V_TB : std_logic;

    constant PERIOD : time := 100ns;

begin
    uut: DP_ArithmeticLogicUnit_21363479 port map (
        A => A_TB,
        B => B_TB,
        C_IN => C_IN_TB,
        S0 => S0_TB,
        S1 => S1_TB,
        S2 => S2_TB,
        G => G_TB,
        C => C_TB,
        V => V_TB
        );
        
stim_proc: process      
    
begin
    wait for PERIOD;                            --output student ID
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '0';
    S1_TB <= '0';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID + 1
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '1';
    S0_TB <= '0';
    S1_TB <= '0';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID + B
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '1';
    S1_TB <= '0';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID + B + 1
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '1';
    S0_TB <= '1';
    S1_TB <= '0';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID + not(B)
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '0';
    S1_TB <= '1';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID + not(B) +1
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '1';
    S0_TB <= '0';
    S1_TB <= '1';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID - 1
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '1';
    S1_TB <= '1';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '1';
    S0_TB <= '1';
    S1_TB <= '1';
    S2_TB <= '0';

    wait for PERIOD;                            --output student ID AND B
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '0';
    S1_TB <= '0';
    S2_TB <= '1';

    wait for PERIOD;                            --output student ID OR B
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '1';
    S1_TB <= '0';
    S2_TB <= '1';

    wait for PERIOD;                            --output student ID XOR B
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '0';
    S1_TB <= '1';
    S2_TB <= '1';

    wait for PERIOD;                            --output not(student ID)
    A_TB <= "00000001010001011111101100010111";
    B_TB <= "00000001001101100011010001111001";
    C_IN_TB <= '0';
    S0_TB <= '1';
    S1_TB <= '1';
    S2_TB <= '1';

end process;

end Sim;
