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

entity RF_Mux32_32Bit_21363479_TB is
--  Port ( );
end RF_Mux32_32Bit_21363479_TB;

architecture Sim of RF_Mux32_32Bit_21363479_TB is

component RF_Mux32_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24,
                                                                        in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (4 downto 0);
    z: out std_logic_vector (31 downto 0));
end component;

Signal s_TB : std_logic_vector (4 downto 0);
Signal in0_TB, in1_TB, in2_TB, in3_TB, in4_TB, in5_TB, in6_TB, in7_TB, in8_TB, in9_TB, in10_TB, in11_TB, in12_TB, in13_TB, in14_TB, in15_TB, in16_TB, 
                        in17_TB, in18_TB, in19_TB, in20_TB, in21_TB, in22_TB, in23_TB, in24_TB, in25_TB, in26_TB, in27_TB, in28_TB, in29_TB, in30_TB, 
                                                                                                            in31_TB : std_logic_vector (31 downto 0);
Signal z_TB : std_logic_vector (31 downto 0);

constant PERIOD : time := 20ns;



begin
    uut: RF_Mux32_32Bit_21363479 port map
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
        in16 => in16_TB,
        in17 => in17_TB,
        in18 => in18_TB,
        in19 => in19_TB,
        in20 => in20_TB,
        in21 => in21_TB,
        in22 => in22_TB,
        in23 => in23_TB,
        in24 => in24_TB,
        in25 => in25_TB,
        in26 => in26_TB,
        in27 => in27_TB,
        in28 => in28_TB,
        in29 => in29_TB,
        in30 => in30_TB,
        in31 => in31_TB,
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
    in16_TB <= "00000001010001011111101100100111";
    in17_TB <= "00000001010001011111101100101000";
    in18_TB <= "00000001010001011111101100101001";
    in19_TB <= "00000001010001011111101100101010";
    in20_TB <= "00000001010001011111101100101011";
    in21_TB <= "00000001010001011111101100101100";
    in22_TB <= "00000001010001011111101100101101";
    in23_TB <= "00000001010001011111101100101110";
    in24_TB <= "00000001010001011111101100101111";
    in25_TB <= "00000001010001011111101100110000";
    in26_TB <= "00000001010001011111101100110001";
    in27_TB <= "00000001010001011111101100110010";
    in28_TB <= "00000001010001011111101100110011";
    in29_TB <= "00000001010001011111101100110100";
    in30_TB <= "00000001010001011111101100110101";
    in31_TB <= "00000001010001011111101100110110";
    
    wait for PERIOD;
    s_TB <= "00000";
    
    wait for PERIOD;
    s_TB <= "00001";
    
    wait for PERIOD;
    s_TB <= "00010";
    
    wait for PERIOD;
    s_TB <= "00011";
    
    wait for PERIOD;
    s_TB <= "00100";
    
    wait for PERIOD;
    s_TB <= "00101";
    
    wait for PERIOD;
    s_TB <= "00110";
    
    wait for PERIOD;
    s_TB <= "00111";
    
    wait for PERIOD;
    s_TB <= "01000";
    
    wait for PERIOD;
    s_TB <= "01001";
    
    wait for PERIOD;
    s_TB <= "01010";
    
    wait for PERIOD;
    s_TB <= "01011";
    
    wait for PERIOD;
    s_TB <= "01100";
    
    wait for PERIOD;
    s_TB <= "01101";
    
    wait for PERIOD;
    s_TB <= "01110";
    
    wait for PERIOD;
    s_TB <= "01111";
    
    wait for PERIOD;
    s_TB <= "10000";
    
    wait for PERIOD;
    s_TB <= "10001";
    
    wait for PERIOD;
    s_TB <= "10010";
    
    wait for PERIOD;
    s_TB <= "10011";
    
    wait for PERIOD;
    s_TB <= "10100";
    
    wait for PERIOD;
    s_TB <= "10101";
    
    wait for PERIOD;
    s_TB <= "10110";
    
    wait for PERIOD;
    s_TB <= "10111";
    
    wait for PERIOD;
    s_TB <= "11000";
    
    wait for PERIOD;
    s_TB <= "11001";
    
    wait for PERIOD;
    s_TB <= "11010";
    
    wait for PERIOD;
    s_TB <= "11011";
    
    wait for PERIOD;
    s_TB <= "11100";
    
    wait for PERIOD;
    s_TB <= "11101";
    
    wait for PERIOD;
    s_TB <= "11110";
    
    wait for PERIOD;
    s_TB <= "11111";

    end process;

end Sim;