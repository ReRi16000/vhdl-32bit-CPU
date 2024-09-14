----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 16:56:22
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_21363479 - behavioural
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

entity DP_32Bit_B_Logic_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          Y : out std_logic_vector (31 downto 0) 
         );
end DP_32Bit_B_Logic_21363479;

architecture behavioural of DP_32Bit_B_Logic_21363479 is

component DP_SingleBit_B_Logic_21363479 is
    Port (B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
         );
end component DP_SingleBit_B_Logic_21363479;

begin
    BIT00: DP_SingleBit_B_Logic_21363479 port map (B => B(0), s(0) => S0, s(1) => S1, z => Y(0));
    BIT01: DP_SingleBit_B_Logic_21363479 port map (B => B(1), s(0) => S0, s(1) => S1, z => Y(1));
    BIT02: DP_SingleBit_B_Logic_21363479 port map (B => B(2), s(0) => S0, s(1) => S1, z => Y(2));
    BIT03: DP_SingleBit_B_Logic_21363479 port map (B => B(3), s(0) => S0, s(1) => S1, z => Y(3));
    BIT04: DP_SingleBit_B_Logic_21363479 port map (B => B(4), s(0) => S0, s(1) => S1, z => Y(4));
    BIT05: DP_SingleBit_B_Logic_21363479 port map (B => B(5), s(0) => S0, s(1) => S1, z => Y(5));
    BIT06: DP_SingleBit_B_Logic_21363479 port map (B => B(6), s(0) => S0, s(1) => S1, z => Y(6));
    BIT07: DP_SingleBit_B_Logic_21363479 port map (B => B(7), s(0) => S0, s(1) => S1, z => Y(7));
    BIT08: DP_SingleBit_B_Logic_21363479 port map (B => B(8), s(0) => S0, s(1) => S1, z => Y(8));
    BIT09: DP_SingleBit_B_Logic_21363479 port map (B => B(9), s(0) => S0, s(1) => S1, z => Y(9));
    BIT10: DP_SingleBit_B_Logic_21363479 port map (B => B(10), s(0) => S0, s(1) => S1, z => Y(10));
    BIT11: DP_SingleBit_B_Logic_21363479 port map (B => B(11), s(0) => S0, s(1) => S1, z => Y(11));
    BIT12: DP_SingleBit_B_Logic_21363479 port map (B => B(12), s(0) => S0, s(1) => S1, z => Y(12));
    BIT13: DP_SingleBit_B_Logic_21363479 port map (B => B(13), s(0) => S0, s(1) => S1, z => Y(13));
    BIT14: DP_SingleBit_B_Logic_21363479 port map (B => B(14), s(0) => S0, s(1) => S1, z => Y(14));
    BIT15: DP_SingleBit_B_Logic_21363479 port map (B => B(15), s(0) => S0, s(1) => S1, z => Y(15));
    BIT16: DP_SingleBit_B_Logic_21363479 port map (B => B(16), s(0) => S0, s(1) => S1, z => Y(16));
    BIT17: DP_SingleBit_B_Logic_21363479 port map (B => B(17), s(0) => S0, s(1) => S1, z => Y(17));
    BIT18: DP_SingleBit_B_Logic_21363479 port map (B => B(18), s(0) => S0, s(1) => S1, z => Y(18));
    BIT19: DP_SingleBit_B_Logic_21363479 port map (B => B(19), s(0) => S0, s(1) => S1, z => Y(19));
    BIT20: DP_SingleBit_B_Logic_21363479 port map (B => B(20), s(0) => S0, s(1) => S1, z => Y(20));
    BIT21: DP_SingleBit_B_Logic_21363479 port map (B => B(21), s(0) => S0, s(1) => S1, z => Y(21));
    BIT22: DP_SingleBit_B_Logic_21363479 port map (B => B(22), s(0) => S0, s(1) => S1, z => Y(22));
    BIT23: DP_SingleBit_B_Logic_21363479 port map (B => B(23), s(0) => S0, s(1) => S1, z => Y(23));
    BIT24: DP_SingleBit_B_Logic_21363479 port map (B => B(24), s(0) => S0, s(1) => S1, z => Y(24));
    BIT25: DP_SingleBit_B_Logic_21363479 port map (B => B(25), s(0) => S0, s(1) => S1, z => Y(25));
    BIT26: DP_SingleBit_B_Logic_21363479 port map (B => B(26), s(0) => S0, s(1) => S1, z => Y(26));
    BIT27: DP_SingleBit_B_Logic_21363479 port map (B => B(27), s(0) => S0, s(1) => S1, z => Y(27));
    BIT28: DP_SingleBit_B_Logic_21363479 port map (B => B(28), s(0) => S0, s(1) => S1, z => Y(28));
    BIT29: DP_SingleBit_B_Logic_21363479 port map (B => B(29), s(0) => S0, s(1) => S1, z => Y(29));
    BIT30: DP_SingleBit_B_Logic_21363479 port map (B => B(30), s(0) => S0, s(1) => S1, z => Y(30));
    BIT31: DP_SingleBit_B_Logic_21363479 port map (B => B(31), s(0) => S0, s(1) => S1, z => Y(31));

end behavioural;
