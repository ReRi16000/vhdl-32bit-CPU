----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 14:43:59
-- Design Name: 
-- Module Name: RF_Register32Bit_21363479 - Behavioral
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

entity RF_Register32Bit_21363479 is
    Port ( A : in std_logic_vector (31 downto 0);  --A = what we're loading
           load, clock : in std_logic;             --load = are we loading, clock = rising edge do thing
           D : out std_logic_vector (31 downto 0));--D = what's alreaedy stored
end RF_Register32Bit_21363479;

architecture behavioural of RF_Register32Bit_21363479 is

begin

process (clock)
begin
   if clock'event and clock='1' then
     if load='1' then
       D <= A after 3ns;
     end if;
   end if;
end process;

end behavioural;
