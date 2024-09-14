----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 17:44:37
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_21363479 - behavioural
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

entity DP_32Bit_LogicCircuit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          G : out std_logic_vector (31 downto 0)
          );
end DP_32Bit_LogicCircuit_21363479;

architecture behavioural of DP_32Bit_LogicCircuit_21363479 is

component DP_SingleBit_LogicCircuit_21363479 is
    Port (A, B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end component DP_SingleBit_LogicCircuit_21363479;

begin
    BIT00: DP_SingleBit_LogicCircuit_21363479 port map (A => A(0), B => B(0), s(0) => S0, s(1) => S1, z => G(0));
    BIT01: DP_SingleBit_LogicCircuit_21363479 port map (A => A(1), B => B(1), s(0) => S0, s(1) => S1, z => G(1));
    BIT02: DP_SingleBit_LogicCircuit_21363479 port map (A => A(2), B => B(2), s(0) => S0, s(1) => S1, z => G(2));
    BIT03: DP_SingleBit_LogicCircuit_21363479 port map (A => A(3), B => B(3), s(0) => S0, s(1) => S1, z => G(3));
    BIT04: DP_SingleBit_LogicCircuit_21363479 port map (A => A(4), B => B(4), s(0) => S0, s(1) => S1, z => G(4));
    BIT05: DP_SingleBit_LogicCircuit_21363479 port map (A => A(5), B => B(5), s(0) => S0, s(1) => S1, z => G(5));
    BIT06: DP_SingleBit_LogicCircuit_21363479 port map (A => A(6), B => B(6), s(0) => S0, s(1) => S1, z => G(6));
    BIT07: DP_SingleBit_LogicCircuit_21363479 port map (A => A(7), B => B(7), s(0) => S0, s(1) => S1, z => G(7));
    BIT08: DP_SingleBit_LogicCircuit_21363479 port map (A => A(8), B => B(8), s(0) => S0, s(1) => S1, z => G(8));
    BIT09: DP_SingleBit_LogicCircuit_21363479 port map (A => A(9), B => B(9), s(0) => S0, s(1) => S1, z => G(9));
    BIT10: DP_SingleBit_LogicCircuit_21363479 port map (A => A(10), B => B(10), s(0) => S0, s(1) => S1, z => G(10));
    BIT11: DP_SingleBit_LogicCircuit_21363479 port map (A => A(11), B => B(11), s(0) => S0, s(1) => S1, z => G(11));
    BIT12: DP_SingleBit_LogicCircuit_21363479 port map (A => A(12), B => B(12), s(0) => S0, s(1) => S1, z => G(12));
    BIT13: DP_SingleBit_LogicCircuit_21363479 port map (A => A(13), B => B(13), s(0) => S0, s(1) => S1, z => G(13));
    BIT14: DP_SingleBit_LogicCircuit_21363479 port map (A => A(14), B => B(14), s(0) => S0, s(1) => S1, z => G(14));
    BIT15: DP_SingleBit_LogicCircuit_21363479 port map (A => A(15), B => B(15), s(0) => S0, s(1) => S1, z => G(15));
    BIT16: DP_SingleBit_LogicCircuit_21363479 port map (A => A(16), B => B(16), s(0) => S0, s(1) => S1, z => G(16));
    BIT17: DP_SingleBit_LogicCircuit_21363479 port map (A => A(17), B => B(17), s(0) => S0, s(1) => S1, z => G(17));
    BIT18: DP_SingleBit_LogicCircuit_21363479 port map (A => A(18), B => B(18), s(0) => S0, s(1) => S1, z => G(18));
    BIT19: DP_SingleBit_LogicCircuit_21363479 port map (A => A(19), B => B(19), s(0) => S0, s(1) => S1, z => G(19));
    BIT20: DP_SingleBit_LogicCircuit_21363479 port map (A => A(20), B => B(20), s(0) => S0, s(1) => S1, z => G(20));
    BIT21: DP_SingleBit_LogicCircuit_21363479 port map (A => A(21), B => B(21), s(0) => S0, s(1) => S1, z => G(21));
    BIT22: DP_SingleBit_LogicCircuit_21363479 port map (A => A(22), B => B(22), s(0) => S0, s(1) => S1, z => G(22));
    BIT23: DP_SingleBit_LogicCircuit_21363479 port map (A => A(23), B => B(23), s(0) => S0, s(1) => S1, z => G(23));
    BIT24: DP_SingleBit_LogicCircuit_21363479 port map (A => A(24), B => B(24), s(0) => S0, s(1) => S1, z => G(24));
    BIT25: DP_SingleBit_LogicCircuit_21363479 port map (A => A(25), B => B(25), s(0) => S0, s(1) => S1, z => G(25));
    BIT26: DP_SingleBit_LogicCircuit_21363479 port map (A => A(26), B => B(26), s(0) => S0, s(1) => S1, z => G(26));
    BIT27: DP_SingleBit_LogicCircuit_21363479 port map (A => A(27), B => B(27), s(0) => S0, s(1) => S1, z => G(27));
    BIT28: DP_SingleBit_LogicCircuit_21363479 port map (A => A(28), B => B(28), s(0) => S0, s(1) => S1, z => G(28));
    BIT29: DP_SingleBit_LogicCircuit_21363479 port map (A => A(29), B => B(29), s(0) => S0, s(1) => S1, z => G(29));
    BIT30: DP_SingleBit_LogicCircuit_21363479 port map (A => A(30), B => B(30), s(0) => S0, s(1) => S1, z => G(30));
    BIT31: DP_SingleBit_LogicCircuit_21363479 port map (A => A(31), B => B(31), s(0) => S0, s(1) => S1, z => G(31));


end behavioural;
