----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 16:45:39
-- Design Name: 
-- Module Name: CPU_SMux_21363479 - behavioural
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

entity CPU_SMux_21363479 is
    Port (C_Flag,
          N_Flag,
          Not_C_Flag,
          Not_Z_Flag,
          V_Flag,
          Z_Flag : in std_logic;
          One : in std_logic := '1';
          Zero : in  std_logic := '0';
          MS : in std_logic_vector (2 downto 0);
          CAR : out std_logic
         );
end CPU_SMux_21363479;

architecture behavioural of CPU_SMux_21363479 is

begin

with MS select
CAR <= Zero after 5ns when "000",
        One after 5ns when "001",
        C_Flag after 5ns when "010",
        V_Flag after 5ns when "011",
        Z_Flag after 5ns when "100",
        N_Flag after 5ns when "101",
        Not_C_Flag after 5ns when "110",
        Not_Z_Flag after 5ns when "111",
        'X' after 5ns when others;


end behavioural;
