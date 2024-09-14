----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 17:59:09
-- Design Name: 
-- Module Name: DP_ZeroDetection_21363479_TB - Sim
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

entity DP_ZeroDetection_21363479_TB is
--  Port ( );
end DP_ZeroDetection_21363479_TB;

architecture Sim of DP_ZeroDetection_21363479_TB is

component DP_ZeroDetection_21363479 is
    Port (s : in std_logic_vector (31 downto 0);
          z : out std_logic
          );
end component DP_ZeroDetection_21363479;

signal s_TB : std_logic_vector (31 downto 0);
signal z_TB : std_logic;

constant PERIOD : time := 20ns;

begin
    uut: DP_ZeroDetection_21363479 port map
    (
        s =>  s_TB,
        z => z_TB
    );
    
    stim_proc : process
    
begin 
    
    wait for PERIOD;
    s_TB <= "00000001010001011111101100010111";
    
    wait for PERIOD;
    s_TB <= "00000000000000000000000000000000";
    
    end process;


end Sim;
