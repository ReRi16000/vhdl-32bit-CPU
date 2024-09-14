----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 16:20:03
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_21363479 - behavioural
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

entity DP_SingleBit_B_Logic_21363479 is
    Port (B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
         );
end DP_SingleBit_B_Logic_21363479;

architecture behavioural of DP_SingleBit_B_Logic_21363479 is
    
begin
    
with s select
z <= '0' after 5ns when "00",
    B after 5ns when "01",
    NOT B after 5ns when "10",
    '1' after 5ns when "11",
    'X' after 5ns when others;


end behavioural;
