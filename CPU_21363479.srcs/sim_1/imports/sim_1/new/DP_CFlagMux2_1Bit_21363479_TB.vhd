----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2022 15:30:16
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_21363479_TB - Sim
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

entity DP_CFlagMux2_1Bit_21363479_TB is
--  Port ( );
end DP_CFlagMux2_1Bit_21363479_TB;

architecture Sim of DP_CFlagMux2_1Bit_21363479_TB is

component DP_CFlagMux2_1Bit_21363479 is
    Port (in0, in1 : in std_logic;
          s : in std_logic;
          z : out std_logic
          );
end component DP_CFlagMux2_1Bit_21363479;

Signal in0_TB, in1_TB : std_logic;
Signal s_TB : std_logic;
Signal z_TB : std_logic;

constant PERIOD : time := 20ns;

begin
    uut: DP_CFlagMux2_1Bit_21363479 port map
    (
        in0 => in0_TB,
        in1 => in1_TB,
        s =>  s_TB,
        z => z_TB
    );
    
    stim_proc : process

begin

    in0_TB <= '0';
    in1_TB <= '1';
    
    wait for PERIOD;
    s_TB <= '0';
    
    wait for PERIOD;
    s_TB <= '1';

    end process;

end Sim;
