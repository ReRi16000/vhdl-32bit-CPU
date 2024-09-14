----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 01:45:10
-- Design Name: 
-- Module Name: CPU_StatusRegister_21363479 - behavioural
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_StatusRegister_21363479 is
    Port (C_Flag,
          Clock,
          LoadFlags,
          N_Flag,
          Reset_C,
          Reset_N,
          Reset_V,
          Reset_Z,
          V_Flag,
          Z_Flag : in std_logic;
          StatusVector : out std_logic_vector (3 downto 0)
         );
end CPU_StatusRegister_21363479;

architecture behavioural of CPU_StatusRegister_21363479 is

component CPU_DFlipFlop_21363479 is
    Port (
          Clock, D, Enable, Reset : in std_logic;
          Q : out std_logic
         );
end component CPU_DFlipFlop_21363479;

begin

    CFlag : CPU_DFlipFlop_21363479 port map (Clock => Clock, D => C_Flag, Enable => LoadFlags, 
                                                                       Reset => Reset_C, Q => StatusVector(0));
    NFlag : CPU_DFlipFlop_21363479 port map (Clock => Clock, D => N_Flag, Enable => LoadFlags, 
                                                                       Reset => Reset_N, Q => StatusVector(2));
    VFlag : CPU_DFlipFlop_21363479 port map (Clock => Clock, D => V_Flag, Enable => LoadFlags, 
                                                                       Reset => Reset_V, Q => StatusVector(1));
    ZFlag : CPU_DFlipFlop_21363479 port map (Clock => Clock, D => Z_Flag, Enable => LoadFlags, 
                                                                       Reset => Reset_Z, Q => StatusVector(3));


end behavioural;
