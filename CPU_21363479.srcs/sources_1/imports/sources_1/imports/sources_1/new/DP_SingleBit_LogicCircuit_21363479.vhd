----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 16:11:26
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_21363479 - behavioural
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

entity DP_SingleBit_LogicCircuit_21363479 is
    Port (A, B : in std_logic;
          s : in std_logic_vector (1 downto 0);
          z : out std_logic
          );
end DP_SingleBit_LogicCircuit_21363479;

architecture behavioural of DP_SingleBit_LogicCircuit_21363479 is

    Signal AandB : std_logic;
    Signal AorB : std_logic;
    Signal AxorB : std_logic;
    Signal notA : std_logic;

begin

    AandB <= A AND B after 5ns;
    AorB <= A OR B after 5ns;
    AxorB <= A XOR B after 5ns;
    notA <= NOT A after 5ns;
    
with s select
z <= AandB after 5ns when "00",
    AorB after 5ns when "01",
    AxorB after 5ns when "10",
    notA after 5ns when "11",
    'X' after 5ns when others;


end behavioural;
