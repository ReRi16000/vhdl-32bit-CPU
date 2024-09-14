----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 15:09:39
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_21363479_TB - Sim
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

entity RF_Mux16_32Bit_21363479_TB is
--  Port ( );
end RF_Mux16_32Bit_21363479_TB;

architecture Sim of RF_Mux16_32Bit_21363479_TB is

component RF_Mux16_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (3 downto 0);
    z: out std_logic_vector (31 downto 0));
end component;

Signal s_TB : std_logic_vector (3 downto 0);
Signal in0_TB, in1_TB, in2_TB, in3_TB, in4_TB, in5_TB, in6_TB, in7_TB, in8_TB, in9_TB, in10_TB, in11_TB, in12_TB, in13_TB, in14_TB, in15_TB : 
                                                                                                                    std_logic_vector (31 downto 0);
Signal z_TB : std_logic_vector (31 downto 0);

constant PERIOD : time := 20ns;



begin
    uut: RF_Mux16_32Bit_21363479 port map
    (
        in0 => in0_TB,
        in1 => in1_TB,
        in2 => in2_TB,
        in3 => in3_TB,
        in4 => in4_TB,
        in5 => in5_TB,
        in6 => in6_TB,
        in7 => in7_TB,
        in8 => in8_TB,
        in9 => in9_TB,
        in10 => in10_TB,
        in11 => in11_TB,
        in12 => in12_TB,
        in13 => in13_TB,
        in14 => in14_TB,
        in15 => in15_TB,
        s =>  s_TB,
        z => z_TB
    );
    
    stim_proc : process

begin

    in0_TB <= "00000001010001011111101100010111";
    in1_TB <= "00000001010001011111101100011000";
    in2_TB <= "00000001010001011111101100011001";
    in3_TB <= "00000001010001011111101100011010";
    in4_TB <= "00000001010001011111101100011011";
    in5_TB <= "00000001010001011111101100011100";
    in6_TB <= "00000001010001011111101100011101";
    in7_TB <= "00000001010001011111101100011110";
    in8_TB <= "00000001010001011111101100011111";
    in9_TB <= "00000001010001011111101100100000";
    in10_TB <= "00000001010001011111101100100001";
    in11_TB <= "00000001010001011111101100100010";
    in12_TB <= "00000001010001011111101100100011";
    in13_TB <= "00000001010001011111101100100100";
    in14_TB <= "00000001010001011111101100100101";
    in15_TB <= "00000001010001011111101100100110";
    
    wait for PERIOD;
    s_TB <= "0000";
    
    wait for PERIOD;
    s_TB <= "0001";
    
    wait for PERIOD;
    s_TB <= "0010";
    
    wait for PERIOD;
    s_TB <= "0011";
    
    wait for PERIOD;
    s_TB <= "0100";
    
    wait for PERIOD;
    s_TB <= "0101";
    
    wait for PERIOD;
    s_TB <= "0110";
    
    wait for PERIOD;
    s_TB <= "0111";
    
    wait for PERIOD;
    s_TB <= "1000";
    
    wait for PERIOD;
    s_TB <= "1001";
    
    wait for PERIOD;
    s_TB <= "1010";
    
    wait for PERIOD;
    s_TB <= "1011";
    
    wait for PERIOD;
    s_TB <= "1100";
    
    wait for PERIOD;
    s_TB <= "1101";
    
    wait for PERIOD;
    s_TB <= "1110";
    
    wait for PERIOD;
    s_TB <= "1111";

    end process;

end Sim;