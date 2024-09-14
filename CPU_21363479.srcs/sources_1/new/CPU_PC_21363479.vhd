----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 16:38:27
-- Design Name: 
-- Module Name: CPU_PC_21363479 - behavioural
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

entity CPU_PC_21363479 is
    Port (Clock, PI, PL, Reset : in std_logic;
          Displacement : in std_logic_vector (31 downto 0);
          InstAdd : out std_logic_vector (31 downto 0)
          );
end CPU_PC_21363479;

architecture behavioural of CPU_PC_21363479 is

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

component DP_RippleCarryAdder32Bit_21363479
    Port (A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          C_IN : in std_logic;
          SUM : out std_logic_vector (31 downto 0);
          C_OUT : out std_logic;
          V : out std_logic
         );
end component;

component RF_Register32Bit_21363479
port (A : in std_logic_vector (31 downto 0);
      load, clock : in std_logic;
      D : out std_logic_vector (31 downto 0)
     );
end component;

Signal PMuxOut : std_logic_vector (31 downto 0);
Signal RegOut : std_logic_vector (31 downto 0);
Signal AdderOut : std_logic_vector (31 downto 0);
Signal ResetMuxOut : std_logic_vector (31 downto 0);
Signal PCLoad0_i : std_logic;
Signal PCLoad_i : std_logic;

begin

    PL_PI_MUX : CPU_Mux2_32Bit_21363479 port map (in0 => Displacement, in1 => X"00000001", s => PI,
                                                                                                  z => PMuxOut);
    Adder : DP_RippleCarryAdder32Bit_21363479 port map (A => RegOut, B => PMuxOut, C_IN => '0',
                                                                                               SUM => AdderOut);
    ResetMux : CPU_Mux2_32Bit_21363479 port map (in0 => AdderOut, in1 => X"00000064", s => Reset,
                                                                                              z => ResetMuxOut);
    PC :  RF_Register32Bit_21363479 port map (A => ResetMuxOut, load => PCLoad_i, clock => Clock, D => RegOut); 
    
    PCLoad0_i <= Reset OR PL;
    PCLoad_i <= PCLoad0_i OR PI;
    InstAdd <= RegOut;                                                                                        

end behavioural;
