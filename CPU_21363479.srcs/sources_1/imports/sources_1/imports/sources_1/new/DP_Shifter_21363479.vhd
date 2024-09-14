----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2022 16:07:39
-- Design Name: 
-- Module Name: DP_Shifter_21363479 - behavioural
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

entity DP_Shifter_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C : out std_logic
          );
end DP_Shifter_21363479;

architecture behavioural of DP_Shifter_21363479 is

component DP_Mux3_1Bit_21363479 is
    Port (in0, in1, in2 : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end component DP_Mux3_1Bit_21363479;

component DP_ShifterCFlagMux2_1Bit_21363479 is
    Port (in0, in1 : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end component DP_ShifterCFlagMux2_1Bit_21363479;

constant PERIOD : time := 20ns;

begin

BIT00 : DP_Mux3_1Bit_21363479 port map (in0 => B(0), in2 => '0', in1 => B(1), s(0) => S1, s(1) => S2, z => G(0));
BIT01 : DP_Mux3_1Bit_21363479 port map (in0 => B(1), in2 => B(0), in1 => B(2), s(0) => S1, s(1) => S2, z => G(1));
BIT02 : DP_Mux3_1Bit_21363479 port map (in0 => B(2), in2 => B(1), in1 => B(3), s(0) => S1, s(1) => S2, z => G(2));
BIT03 : DP_Mux3_1Bit_21363479 port map (in0 => B(3), in2 => B(2), in1 => B(4), s(0) => S1, s(1) => S2, z => G(3));
BIT04 : DP_Mux3_1Bit_21363479 port map (in0 => B(4), in2 => B(3), in1 => B(5), s(0) => S1, s(1) => S2, z => G(4));
BIT05 : DP_Mux3_1Bit_21363479 port map (in0 => B(5), in2 => B(4), in1 => B(6), s(0) => S1, s(1) => S2, z => G(5));
BIT06 : DP_Mux3_1Bit_21363479 port map (in0 => B(6), in2 => B(5), in1 => B(7), s(0) => S1, s(1) => S2, z => G(6));
BIT07 : DP_Mux3_1Bit_21363479 port map (in0 => B(7), in2 => B(6), in1 => B(8), s(0) => S1, s(1) => S2, z => G(7));
BIT08 : DP_Mux3_1Bit_21363479 port map (in0 => B(8), in2 => B(7), in1 => B(9), s(0) => S1, s(1) => S2, z => G(8));
BIT09 : DP_Mux3_1Bit_21363479 port map (in0 => B(9), in2 => B(8), in1 => B(10), s(0) => S1, s(1) => S2, z => G(9));
BIT10 : DP_Mux3_1Bit_21363479 port map (in0 => B(10), in2 => B(9), in1 => B(11), s(0) => S1, s(1) => S2, z => G(10));
BIT11 : DP_Mux3_1Bit_21363479 port map (in0 => B(11), in2 => B(10), in1 => B(12), s(0) => S1, s(1) => S2, z => G(11));
BIT12 : DP_Mux3_1Bit_21363479 port map (in0 => B(12), in2 => B(11), in1 => B(13), s(0) => S1, s(1) => S2, z => G(12));
BIT13 : DP_Mux3_1Bit_21363479 port map (in0 => B(13), in2 => B(12), in1 => B(14), s(0) => S1, s(1) => S2, z => G(13));
BIT14 : DP_Mux3_1Bit_21363479 port map (in0 => B(14), in2 => B(13), in1 => B(15), s(0) => S1, s(1) => S2, z => G(14));
BIT15 : DP_Mux3_1Bit_21363479 port map (in0 => B(15), in2 => B(14), in1 => B(16), s(0) => S1, s(1) => S2, z => G(15));
BIT16 : DP_Mux3_1Bit_21363479 port map (in0 => B(16), in2 => B(15), in1 => B(17), s(0) => S1, s(1) => S2, z => G(16));
BIT17 : DP_Mux3_1Bit_21363479 port map (in0 => B(17), in2 => B(16), in1 => B(18), s(0) => S1, s(1) => S2, z => G(17));
BIT18 : DP_Mux3_1Bit_21363479 port map (in0 => B(18), in2 => B(17), in1 => B(19), s(0) => S1, s(1) => S2, z => G(18));
BIT19 : DP_Mux3_1Bit_21363479 port map (in0 => B(19), in2 => B(18), in1 => B(20), s(0) => S1, s(1) => S2, z => G(19));
BIT20 : DP_Mux3_1Bit_21363479 port map (in0 => B(20), in2 => B(19), in1 => B(21), s(0) => S1, s(1) => S2, z => G(20));
BIT21 : DP_Mux3_1Bit_21363479 port map (in0 => B(21), in2 => B(20), in1 => B(22), s(0) => S1, s(1) => S2, z => G(21));
BIT22 : DP_Mux3_1Bit_21363479 port map (in0 => B(22), in2 => B(21), in1 => B(23), s(0) => S1, s(1) => S2, z => G(22));
BIT23 : DP_Mux3_1Bit_21363479 port map (in0 => B(23), in2 => B(22), in1 => B(24), s(0) => S1, s(1) => S2, z => G(23));
BIT24 : DP_Mux3_1Bit_21363479 port map (in0 => B(24), in2 => B(23), in1 => B(25), s(0) => S1, s(1) => S2, z => G(24));
BIT25 : DP_Mux3_1Bit_21363479 port map (in0 => B(25), in2 => B(24), in1 => B(26), s(0) => S1, s(1) => S2, z => G(25));
BIT26 : DP_Mux3_1Bit_21363479 port map (in0 => B(26), in2 => B(25), in1 => B(27), s(0) => S1, s(1) => S2, z => G(26));
BIT27 : DP_Mux3_1Bit_21363479 port map (in0 => B(27), in2 => B(26), in1 => B(28), s(0) => S1, s(1) => S2, z => G(27));
BIT28 : DP_Mux3_1Bit_21363479 port map (in0 => B(28), in2 => B(27), in1 => B(29), s(0) => S1, s(1) => S2, z => G(28));
BIT29 : DP_Mux3_1Bit_21363479 port map (in0 => B(29), in2 => B(28), in1 => B(30), s(0) => S1, s(1) => S2, z => G(29));
BIT30 : DP_Mux3_1Bit_21363479 port map (in0 => B(30), in2 => B(29), in1 => B(31), s(0) => S1, s(1) => S2, z => G(30));
BIT31 : DP_Mux3_1Bit_21363479 port map (in0 => B(31), in2 => B(30), in1 => '0', s(0) => S1, s(1) => S2, z => G(31));

CFlagMux : DP_ShifterCFlagMux2_1Bit_21363479 port map (in0 => B(0), in1 => B(31), s(0) => S1, s(1) => S2, z => C);


end behavioural;
