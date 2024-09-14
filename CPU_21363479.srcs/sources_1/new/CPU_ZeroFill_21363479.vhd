----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 15:48:08
-- Design Name: 
-- Module Name: CPU_ZeroFill_21363479 - behavioural
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

entity CPU_ZeroFill_21363479 is
    Port (
          SB : in std_logic_vector (4 downto 0);
          MuxB : out std_logic_vector (31 downto 0) := "00000000000000000000000000000000"
         );
end CPU_ZeroFill_21363479;

architecture behavioural of CPU_ZeroFill_21363479 is

begin

    MuxB(4 downto 0) <= SB after 2ns;

end behavioural;
