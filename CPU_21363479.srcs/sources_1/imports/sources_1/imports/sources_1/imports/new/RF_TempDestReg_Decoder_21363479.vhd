----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 14:56:31
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_21363479 - behavioural
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

entity RF_TempDestReg_Decoder_21363479 is
    port(A: in std_logic_vector (3 downto 0);
          D: out std_logic_vector (15 downto 0) );
end RF_TempDestReg_Decoder_21363479;

architecture behavioural of RF_TempDestReg_Decoder_21363479 is

begin
with A select
D <= "0000000000000001" after 5ns when "0000",
     "0000000000000010" after 5ns when "0001",
     "0000000000000100" after 5ns when "0010",
     "0000000000001000" after 5ns when "0011",
     "0000000000010000" after 5ns when "0100",
     "0000000000100000" after 5ns when "0101",
     "0000000001000000" after 5ns when "0110",
     "0000000010000000" after 5ns when "0111",
     "0000000100000000" after 5ns when "1000",
     "0000001000000000" after 5ns when "1001",
     "0000010000000000" after 5ns when "1010",
     "0000100000000000" after 5ns when "1011",
     "0001000000000000" after 5ns when "1100",
     "0010000000000000" after 5ns when "1101",
     "0100000000000000" after 5ns when "1110",
     "1000000000000000" after 5ns when "1111",
     "XXXXXXXXXXXXXXXX" when others;
end behavioural;
