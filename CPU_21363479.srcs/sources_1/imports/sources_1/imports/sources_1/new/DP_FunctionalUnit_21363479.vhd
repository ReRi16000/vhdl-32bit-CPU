----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 21:51:09
-- Design Name: 
-- Module Name: DP_FunctionalUnit_21363479 - behavioural
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

entity DP_FunctionalUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          FS : in std_logic_vector (4 downto 0);
          F : out std_logic_vector (31 downto 0);
          C, N, Z, V : out std_logic
         );
end DP_FunctionalUnit_21363479;

architecture behavioural of DP_FunctionalUnit_21363479 is

component DP_Shifter_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C : out std_logic
          );
end component DP_Shifter_21363479;

component DP_ArithmeticLogicUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          C_IN, S0, S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C, V : out std_logic
         );
end component DP_ArithmeticLogicUnit_21363479;

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

component DP_CFlagMux2_1Bit_21363479 is
    Port (in0, in1 : in std_logic;
          s : in std_logic;
          z : out std_logic
          );
end component DP_CFlagMux2_1Bit_21363479;

component DP_ZeroDetection_21363479 is
    Port (s : in std_logic_vector (31 downto 0);
          z : out std_logic
          );
end component DP_ZeroDetection_21363479;

    Signal Shifter_Out, ALU_Out, MuxF_Out : std_logic_vector (31 downto 0);
    Signal Shifter_C, ALU_C : std_logic;

begin
    Shifter: DP_Shifter_21363479 port map (B => B, S1 => FS(2), S2 => FS(3), G => Shifter_Out, C => Shifter_C);
    ALU: DP_ArithmeticLogicUnit_21363479 port map (A => A, B => B, C_IN => FS(0), S0 => FS(1), S1 => FS(2), S2 => FS(3),
                                                                                                            G => ALU_Out, C => ALU_C, V => V);
    MuxF: CPU_Mux2_32Bit_21363479 port map (in0 => ALU_Out, in1 => Shifter_Out, s => FS(4), z => MuxF_Out);
    C_Flag: DP_CFlagMux2_1Bit_21363479 port map (in0 => ALU_C, in1 => Shifter_C, s => FS(4), z => C);
    Z_Flag: DP_ZeroDetection_21363479 port map (s => MuxF_Out, z => Z);
    F <= MuxF_Out;
    N <= MuxF_Out(31);

end behavioural;
