----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 01:00:09
-- Design Name: 
-- Module Name: CPU_DFlipFlop_21363479 - behavioural
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

entity CPU_DFlipFlop_21363479 is
    Port (
          Clock, D, Enable, Reset : in std_logic;
          Q : out std_logic
         );
end CPU_DFlipFlop_21363479;

architecture behavioural of CPU_DFlipFlop_21363479 is

begin

    process (Clock)
        begin
        if Clock'event and Clock='1'then
            if Reset='1' then
                Q <= '0';
            elsif Enable='1' then
                Q <= D;
            end if;
        end if;
    end process;

end behavioural;
