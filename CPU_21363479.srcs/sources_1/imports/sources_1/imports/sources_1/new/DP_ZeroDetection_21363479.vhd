----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 17:53:05
-- Design Name: 
-- Module Name: DP_ZeroDetection_21363479 - behavioural
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

entity DP_ZeroDetection_21363479 is
    Port (s : in std_logic_vector (31 downto 0);
          z : out std_logic
          );
end DP_ZeroDetection_21363479;

architecture behavioural of DP_ZeroDetection_21363479 is
begin
with s select
z <= '1' after 5ns when "00000000000000000000000000000000",
    '0' after 5ns when others;
end behavioural;
