----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 22:36:42
-- Design Name: 
-- Module Name: DP_Datapath_21363479 - behavioural
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

entity DP_Datapath_21363479 is
    Port (IR_IN, DATA_IN : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW : in std_logic;
          DATA_OUT, ADD : out std_logic_vector (31 downto 0);
          C, N, V, Z : out std_logic
           );
end DP_Datapath_21363479;

architecture behavioural of DP_Datapath_21363479 is

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

component DP_FunctionalUnit_21363479 is
    Port (A, B : in std_logic_vector (31 downto 0);
          FS : in std_logic_vector (4 downto 0);
          F : out std_logic_vector (31 downto 0);
          C, N, Z, V : out std_logic
         );
end component DP_FunctionalUnit_21363479;

component RF_RegisterFile_32_15_21363479 is
  Port (SA, DR, SB : in std_logic_vector (4 downto 0);
        Clock, RW : in std_ulogic;
        D : in std_logic_vector (31 downto 0);
        TA, TB, TD : in std_logic_vector (3 downto 0);
        A, B : out std_logic_vector (31 downto 0)
        );
end component RF_RegisterFile_32_15_21363479;

    Signal RegFile_OutA, RegFile_OutB, MuxB_Out, MuxD_Out, FUnit_Out : std_logic_vector (31 downto 0);

begin
    MuxB: CPU_Mux2_32Bit_21363479 port map (in0 => RegFile_OutB, in1 => IR_IN, s => MB, z => MuxB_Out);
    MuxD: CPU_Mux2_32Bit_21363479 port map (in0 => FUnit_Out, in1 => DATA_IN, s => MD, z => MuxD_Out);
    FunctionalUnit: DP_FunctionalUnit_21363479 port map (A => RegFile_OutA, B => MuxB_Out, FS => FS, C => C, F => FUnit_Out, N => N, V => V, Z => Z);
    RegisterFile: RF_RegisterFile_32_15_21363479 port map (Clock => Clock, D => MuxD_Out, DR => DR, RW => RW, SA => SA, SB => SB, TA => TA, 
                                                                                            TB => TB, TD => TD, A => RegFile_OutA, B => RegFile_OutB);                                                                                           
    DATA_OUT <= MuxB_Out;
    ADD <= RegFile_OutA;
    

end behavioural;
