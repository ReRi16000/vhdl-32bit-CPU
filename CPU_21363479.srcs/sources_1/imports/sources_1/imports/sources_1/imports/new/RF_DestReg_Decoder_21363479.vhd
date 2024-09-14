----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 16:02:20
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_21363479 - Behavioral
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

entity RF_DestReg_Decoder_21363479 is
    port(A: in std_logic_vector (4 downto 0);
          D: out std_logic_vector (31 downto 0) );
end RF_DestReg_Decoder_21363479;

architecture behavioural of RF_DestReg_Decoder_21363479 is

begin
with A select
D <= "00000000000000000000000000000001" after 5ns when "00000",
     "00000000000000000000000000000010" after 5ns when "00001",
     "00000000000000000000000000000100" after 5ns when "00010",
     "00000000000000000000000000001000" after 5ns when "00011",
     "00000000000000000000000000010000" after 5ns when "00100",
     "00000000000000000000000000100000" after 5ns when "00101",
     "00000000000000000000000001000000" after 5ns when "00110",
     "00000000000000000000000010000000" after 5ns when "00111",
     "00000000000000000000000100000000" after 5ns when "01000",
     "00000000000000000000001000000000" after 5ns when "01001",
     "00000000000000000000010000000000" after 5ns when "01010",
     "00000000000000000000100000000000" after 5ns when "01011",
     "00000000000000000001000000000000" after 5ns when "01100",
     "00000000000000000010000000000000" after 5ns when "01101",
     "00000000000000000100000000000000" after 5ns when "01110",
     "00000000000000001000000000000000" after 5ns when "01111",
     "00000000000000010000000000000000" after 5ns when "10000",
     "00000000000000100000000000000000" after 5ns when "10001",
     "00000000000001000000000000000000" after 5ns when "10010",
     "00000000000010000000000000000000" after 5ns when "10011",
     "00000000000100000000000000000000" after 5ns when "10100",
     "00000000001000000000000000000000" after 5ns when "10101",
     "00000000010000000000000000000000" after 5ns when "10110",
     "00000000100000000000000000000000" after 5ns when "10111",
     "00000001000000000000000000000000" after 5ns when "11000",
     "00000010000000000000000000000000" after 5ns when "11001",
     "00000100000000000000000000000000" after 5ns when "11010",
     "00001000000000000000000000000000" after 5ns when "11011",
     "00010000000000000000000000000000" after 5ns when "11100",
     "00100000000000000000000000000000" after 5ns when "11101",
     "01000000000000000000000000000000" after 5ns when "11110",
     "10000000000000000000000000000000" after 5ns when "11111",
     "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" when others;

end behavioural;
