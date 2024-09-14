----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 15:03:25
-- Design Name: 
-- Module Name: DP_FullAdder_21363479 - behavioural
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

entity DP_FullAdder_21363479 is
    Port (A : in std_logic;
          B : in std_logic;
          C_IN : in std_logic;
          SUM : out std_logic;
          C_OUT : out std_logic);
end DP_FullAdder_21363479;

architecture behavioural of DP_FullAdder_21363479 is

Signal AxorB, AandB, AxBandC : std_logic;

begin

AxorB <= A XOR B after 4ns;
AandB <= A AND B after 3ns;
AxBandC <= AxorB AND C_IN after 3ns;

SUM <= AxorB XOR C_IN after 4ns;
C_OUT <= AandB OR AxBandC after 2ns;

end behavioural;
