----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2022 17:37:40
-- Design Name: 
-- Module Name: RF_Mux16_32Bit_21363479 - Behavioral
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

entity RF_Mux16_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (3 downto 0);
    z: out std_logic_vector (31 downto 0));
end RF_Mux16_32Bit_21363479;

architecture behavioural of RF_Mux16_32Bit_21363479 is
begin
with s select
z <= in0 after 5 ns when "0000",
    in1 after 5 ns when "0001",
    in2 after 5 ns when "0010",
    in3 after 5 ns when "0011",
    in4 after 5 ns when "0100",
    in5 after 5 ns when "0101",
    in6 after 5 ns when "0110",
    in7 after 5 ns when "0111",
    in8 after 5 ns when "1000",
    in9 after 5 ns when "1001",
    in10 after 5 ns when "1010",
    in11 after 5 ns when "1011",
    in12 after 5 ns when "1100",
    in13 after 5 ns when "1101",
    in14 after 5 ns when "1110",
    in15 after 5 ns when "1111",
    "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" when others;
end behavioural;
