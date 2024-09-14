----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 12:42:59
-- Design Name: 
-- Module Name: CPU_IR_21363479 - behavioural
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_IR_21363479 is
    Port (Clock, IL : in std_logic;
          Instruction : in std_logic_vector (31 downto 0);
          DR, SA, SB : out std_logic_vector (4 downto 0);
          Opcode : out std_logic_vector (16 downto 0)
          );
end CPU_IR_21363479;

architecture behavioural of CPU_IR_21363479 is

begin

    process (Clock)
    begin
    
   if Clock'event and Clock = '1' then
        if IL = '1' then
         Opcode <= Instruction(31 downto 15) after 2ns;
         DR <= Instruction(14 downto 10) after 2ns;
         SA <= Instruction(9 downto 5) after 2ns;
         SB <= Instruction(4 downto 0) after 2ns;
        end if;
   end if;
   
   end process;


end behavioural;
