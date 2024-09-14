----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 17:34:59
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_21363479 - behavioural
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

entity CPU_Mux2_17Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (16 downto 0);
          Sel : in std_logic;
          Z : out std_logic_vector (16 downto 0)
         );
end CPU_Mux2_17Bit_21363479;

architecture behavioural of CPU_Mux2_17Bit_21363479 is

begin
with Sel select
Z <= in0 after 5ns when '0',
     in1 after 5ns when '1',
     "XXXXXXXXXXXXXXXXX" after 5ns when others;
end behavioural;
