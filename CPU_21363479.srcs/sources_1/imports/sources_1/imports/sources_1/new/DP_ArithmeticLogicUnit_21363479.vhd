----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 20:55:42
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_21363479 - behavioural
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

entity DP_ArithmeticLogicUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          C_IN, S0, S1, S2 : in std_logic;
          G : out std_logic_vector (31 downto 0);
          C, V : out std_logic
         );
end DP_ArithmeticLogicUnit_21363479;

architecture behavioural of DP_ArithmeticLogicUnit_21363479 is

component DP_32Bit_B_Logic_21363479 is
    Port (B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          Y : out std_logic_vector (31 downto 0) 
         );
end component DP_32Bit_B_Logic_21363479;

component DP_RippleCarryAdder32Bit_21363479
    Port (A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          C_IN : in std_logic;
          SUM : out std_logic_vector (31 downto 0);
          C_OUT : out std_logic;
          V : out std_logic
         );
end component;

component DP_32Bit_LogicCircuit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          S0, S1 : in std_logic;
          G : out std_logic_vector (31 downto 0)
          );
end component DP_32Bit_LogicCircuit_21363479;

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

    Signal BLogic_Out : std_logic_vector (31 downto 0);
    Signal Adder_Out : std_logic_vector (31 downto 0);
    Signal LCircuit_Out : std_logic_vector (31 downto 0);

begin
    BLogic: DP_32Bit_B_Logic_21363479 port map (B => B, S0 => S0, S1 => S1, Y => BLogic_Out);
    Adder: DP_RippleCarryAdder32Bit_21363479 port map (A => A, B => BLogic_Out, C_IN => C_IN, C_OUT => C, SUM => Adder_Out, V => V);
    LogicCircuit: DP_32Bit_LogicCircuit_21363479 port map (A => A, B => B, S0 => S0, S1 => S1, G => LCircuit_Out);
    ALUMux: CPU_Mux2_32Bit_21363479 port map (in0 => Adder_Out, in1 => LCircuit_Out, s => S2, z => G);
    


end behavioural;
