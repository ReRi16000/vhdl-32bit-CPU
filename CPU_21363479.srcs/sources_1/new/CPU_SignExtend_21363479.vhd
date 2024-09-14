----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 14:44:35
-- Design Name: 
-- Module Name: CPU_SignExtend_21363479 - behavioural
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

entity CPU_SignExtend_21363479 is
    Port (
          Input : in std_logic_vector (9 downto 0);
          Output : out std_logic_vector (31 downto 0)
         );
end CPU_SignExtend_21363479;

architecture behavioural of CPU_SignExtend_21363479 is

begin
    Output(31) <= Input(9);
    Output(30) <= Input(9);
    Output(29) <= Input(9);
    Output(28) <= Input(9);
    Output(27) <= Input(9);
    Output(26) <= Input(9);
    Output(25) <= Input(9);
    Output(24) <= Input(9);
    Output(23) <= Input(9);
    Output(22) <= Input(9);
    Output(21) <= Input(9);
    Output(20) <= Input(9);
    Output(19) <= Input(9);
    Output(18) <= Input(9);
    Output(17) <= Input(9);
    Output(16) <= Input(9);
    Output(15) <= Input(9);
    Output(14) <= Input(9);
    Output(13) <= Input(9);
    Output(12) <= Input(9);
    Output(11) <= Input(9);
    Output(10) <= Input(9);
    Output(9 downto 0) <= Input;
end behavioural;
