----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 15:18:54
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_21363479 - behavioural
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

entity DP_RippleCarryAdder32Bit_21363479 is
    Port (A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          C_IN : in std_logic;
          SUM : out std_logic_vector (31 downto 0);
          C_OUT : out std_logic;
          V : out std_logic
          );
end DP_RippleCarryAdder32Bit_21363479;

architecture behavioural of DP_RippleCarryAdder32Bit_21363479 is

component DP_FullAdder_21363479    
    Port(A : in std_logic;
         B : in std_logic;
         C_IN : in std_logic;
         SUM : out std_logic;
         C_OUT : out std_logic
        );
end component;
    
Signal C00_to_C01,
       C01_to_C02,
       C02_to_C03,
       C03_to_C04,
       C04_to_C05,
       C05_to_C06,
       C06_to_C07,
       C07_to_C08,
       C08_to_C09,
       C09_to_C10,
       C10_to_C11,
       C11_to_C12,
       C12_to_C13,
       C13_to_C14,
       C14_to_C15,
       C15_to_C16,
       C16_to_C17,
       C17_to_C18,
       C18_to_C19,
       C19_to_C20,
       C20_to_C21,
       C21_to_C22,
       C22_to_C23,
       C23_to_C24,
       C24_to_C25,
       C25_to_C26,
       C26_to_C27,
       C27_to_C28,
       C28_to_C29,
       C29_to_C30,
       C30_to_C31,
       C31_to_C_Out : std_logic;    

begin

BIT00: DP_FullAdder_21363479 port map
     (
      A => A(0),
      B => B(0),
      C_IN => C_IN,
      SUM => SUM(0),
      C_OUT => C00_to_C01
     );

BIT01: DP_FullAdder_21363479 port map
     (
      A => A(1),
      B => B(1),
      C_IN => C00_to_C01,
      SUM => SUM(1),
      C_OUT => C01_to_C02
     );

BIT02: DP_FullAdder_21363479 port map
     (
      A => A(2),
      B => B(2),
      C_IN => C01_to_C02,
      SUM => SUM(2),
      C_OUT => C02_to_C03
     );

BIT03: DP_FullAdder_21363479 port map
     (
      A => A(3),
      B => B(3),
      C_IN => C02_to_C03,
      SUM => SUM(3),
      C_OUT => C03_to_C04
     );

BIT04: DP_FullAdder_21363479 port map
     (
      A => A(4),
      B => B(4),
      C_IN => C03_to_C04,
      SUM => SUM(4),
      C_OUT => C04_to_C05
     );

BIT05: DP_FullAdder_21363479 port map
     (
      A => A(5),
      B => B(5),
      C_IN => C04_to_C05,
      SUM => SUM(5),
      C_OUT => C05_to_C06
     );

BIT06: DP_FullAdder_21363479 port map
     (
      A => A(6),
      B => B(6),
      C_IN => C05_to_C06,
      SUM => SUM(6),
      C_OUT => C06_to_C07
     );

BIT07: DP_FullAdder_21363479 port map
     (
      A => A(7),
      B => B(7),
      C_IN => C06_to_C07,
      SUM => SUM(7),
      C_OUT => C07_to_C08
     );

BIT08: DP_FullAdder_21363479 port map
     (
      A => A(8),
      B => B(8),
      C_IN => C07_to_C08,
      SUM => SUM(8),
      C_OUT => C08_to_C09
     );

BIT09: DP_FullAdder_21363479 port map
     (
      A => A(9),
      B => B(9),
      C_IN => C08_to_C09,
      SUM => SUM(9),
      C_OUT => C09_to_C10
     );

BIT10: DP_FullAdder_21363479 port map
     (
      A => A(10),
      B => B(10),
      C_IN => C09_to_C10,
      SUM => SUM(10),
      C_OUT => C10_to_C11
     );

BIT11: DP_FullAdder_21363479 port map
     (
      A => A(11),
      B => B(11),
      C_IN => C10_to_C11,
      SUM => SUM(11),
      C_OUT => C11_to_C12
     );

BIT12: DP_FullAdder_21363479 port map
     (
      A => A(12),
      B => B(12),
      C_IN => C11_to_C12,
      SUM => SUM(12),
      C_OUT => C12_to_C13
     );

BIT13: DP_FullAdder_21363479 port map
     (
      A => A(13),
      B => B(13),
      C_IN => C12_to_C13,
      SUM => SUM(13),
      C_OUT => C13_to_C14
     );

BIT14: DP_FullAdder_21363479 port map
     (
      A => A(14),
      B => B(14),
      C_IN => C13_to_C14,
      SUM => SUM(14),
      C_OUT => C14_to_C15
     );

BIT15: DP_FullAdder_21363479 port map
     (
      A => A(15),
      B => B(15),
      C_IN => C14_to_C15,
      SUM => SUM(15),
      C_OUT => C15_to_C16
     );

BIT16: DP_FullAdder_21363479 port map
     (
      A => A(16),
      B => B(16),
      C_IN => C15_to_C16,
      SUM => SUM(16),
      C_OUT => C16_to_C17
     );

BIT17: DP_FullAdder_21363479 port map
     (
      A => A(17),
      B => B(17),
      C_IN => C16_to_C17,
      SUM => SUM(17),
      C_OUT => C17_to_C18
     );

BIT18: DP_FullAdder_21363479 port map
     (
      A => A(18),
      B => B(18),
      C_IN => C17_to_C18,
      SUM => SUM(18),
      C_OUT => C18_to_C19
     );

BIT19: DP_FullAdder_21363479 port map
     (
      A => A(19),
      B => B(19),
      C_IN => C18_to_C19,
      SUM => SUM(19),
      C_OUT => C19_to_C20
     );

BIT20: DP_FullAdder_21363479 port map
     (
      A => A(20),
      B => B(20),
      C_IN => C19_to_C20,
      SUM => SUM(20),
      C_OUT => C20_to_C21
     );

BIT21: DP_FullAdder_21363479 port map
     (
      A => A(21),
      B => B(21),
      C_IN => C20_to_C21,
      SUM => SUM(21),
      C_OUT => C21_to_C22
     );

BIT22: DP_FullAdder_21363479 port map
     (
      A => A(22),
      B => B(22),
      C_IN => C21_to_C22,
      SUM => SUM(22),
      C_OUT => C22_to_C23
     );

BIT23: DP_FullAdder_21363479 port map
     (
      A => A(23),
      B => B(23),
      C_IN => C22_to_C23,
      SUM => SUM(23),
      C_OUT => C23_to_C24
     );

BIT24: DP_FullAdder_21363479 port map
     (
      A => A(24),
      B => B(24),
      C_IN => C23_to_C24,
      SUM => SUM(24),
      C_OUT => C24_to_C25
     );

BIT25: DP_FullAdder_21363479 port map
     (
      A => A(25),
      B => B(25),
      C_IN => C24_to_C25,
      SUM => SUM(25),
      C_OUT => C25_to_C26
     );

BIT26: DP_FullAdder_21363479 port map
     (
      A => A(26),
      B => B(26),
      C_IN => C25_to_C26,
      SUM => SUM(26),
      C_OUT => C26_to_C27
     );

BIT27: DP_FullAdder_21363479 port map
     (
      A => A(27),
      B => B(27),
      C_IN => C26_to_C27,
      SUM => SUM(27),
      C_OUT => C27_to_C28
     );

BIT28: DP_FullAdder_21363479 port map
     (
      A => A(28),
      B => B(28),
      C_IN => C27_to_C28,
      SUM => SUM(28),
      C_OUT => C28_to_C29
     );

BIT29: DP_FullAdder_21363479 port map
     (
      A => A(29),
      B => B(29),
      C_IN => C28_to_C29,
      SUM => SUM(29),
      C_OUT => C29_to_C30
     );

BIT30: DP_FullAdder_21363479 port map
     (
      A => A(30),
      B => B(30),
      C_IN => C29_to_C30,
      SUM => SUM(30),
      C_OUT => C30_to_C31
     );

BIT31: DP_FullAdder_21363479 port map
     (
      A => A(31),
      B => B(31),
      C_IN => C30_to_C31,
      SUM => SUM(31),
      C_OUT => C31_to_C_Out
     );


            
    -- Carry
    
    C_OUT <= C31_to_C_Out;
    
    -- Overflow
    
    V <= C31_to_C_Out XOR C30_to_C31;
      

end behavioural;
