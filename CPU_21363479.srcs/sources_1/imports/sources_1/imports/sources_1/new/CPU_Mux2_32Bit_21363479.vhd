----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 17:26:57
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_21363479 - behavioural
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

entity CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z : out std_logic_vector (31 downto 0)
          );
end CPU_Mux2_32Bit_21363479;

architecture behavioural of CPU_Mux2_32Bit_21363479 is
begin
with s select
z <= in0 after 5 ns when '0',
    in1 after 5 ns when '1',
    "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" when others;
end behavioural;
