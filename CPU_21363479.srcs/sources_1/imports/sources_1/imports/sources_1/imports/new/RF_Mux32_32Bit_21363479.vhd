----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2022 15:36:56
-- Design Name: 
-- Module Name: RF_Mux32_32Bit_21363479 - Behavioral
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

entity RF_Mux32_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30,
            in31 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (4 downto 0);
    z: out std_logic_vector (31 downto 0));
end RF_Mux32_32Bit_21363479;

architecture behavioural of RF_Mux32_32Bit_21363479 is
begin
with s select
z <= in0 after 5 ns when "00000",
    in1 after 5 ns when "00001",
    in2 after 5 ns when "00010",
    in3 after 5 ns when "00011",
    in4 after 5 ns when "00100",
    in5 after 5 ns when "00101",
    in6 after 5 ns when "00110",
    in7 after 5 ns when "00111",
    in8 after 5 ns when "01000",
    in9 after 5 ns when "01001",
    in10 after 5 ns when "01010",
    in11 after 5 ns when "01011",
    in12 after 5 ns when "01100",
    in13 after 5 ns when "01101",
    in14 after 5 ns when "01110",
    in15 after 5 ns when "01111",
    in16 after 5 ns when "10000",
    in17 after 5 ns when "10001",
    in18 after 5 ns when "10010",
    in19 after 5 ns when "10011",
    in20 after 5 ns when "10100",
    in21 after 5 ns when "10101",
    in22 after 5 ns when "10110",
    in23 after 5 ns when "10111",
    in24 after 5 ns when "11000",
    in25 after 5 ns when "11001",
    in26 after 5 ns when "11010",
    in27 after 5 ns when "11011",
    in28 after 5 ns when "11100",
    in29 after 5 ns when "11101",
    in30 after 5 ns when "11110",
    in31 after 5 ns when "11111",
    "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" when others;
end behavioural;
