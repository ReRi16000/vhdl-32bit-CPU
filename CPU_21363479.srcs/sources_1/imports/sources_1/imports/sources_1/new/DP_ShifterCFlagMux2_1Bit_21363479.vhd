----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2022 15:41:26
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_21363479 - behavioural
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

entity DP_ShifterCFlagMux2_1Bit_21363479 is
    Port (in0, in1 : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end DP_ShifterCFlagMux2_1Bit_21363479;

architecture behavioural of DP_ShifterCFlagMux2_1Bit_21363479 is

begin
with s select
z <= '0' after 5 ns when "00",
    in0 after 5 ns when "01",
    in1 after 5 ns when "10",
    'X' when others;
end behavioural;
