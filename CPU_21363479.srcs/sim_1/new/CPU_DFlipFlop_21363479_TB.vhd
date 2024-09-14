----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 01:24:44
-- Design Name: 
-- Module Name: CPU_DFlipFlop_21363479_TB - Sim
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

entity CPU_DFlipFlop_21363479_TB is
--  Port ( );
end CPU_DFlipFlop_21363479_TB;

architecture Sim of CPU_DFlipFlop_21363479_TB is

component CPU_DFlipFlop_21363479 is
    Port (
          Clock, D, Enable, Reset : in std_logic;
          Q : out std_logic
         );
end component CPU_DFlipFlop_21363479;

Signal D_TB, Enable_TB, Reset_TB : std_logic;
Signal Q_TB : std_logic;
Signal Clock_TB : std_logic := '0';

begin

    uut: CPU_DFlipFlop_21363479 port map
    (
     Clock => Clock_TB,
     D => D_TB,
     Enable => Enable_TB,
     Reset => Reset_TB,
     Q => Q_TB   
    );
    
    Clock_TB <= not Clock_TB after 10ns;
    stim_proc : process
    
    begin
    
        wait for 20ns;
        D_TB <= '1';
        Enable_TB <= '1';
        Reset_TB <= '0';
    
        wait for 20ns;
        D_TB <= '1';
        Enable_TB <= '1';
        Reset_TB <= '1';
    
        wait for 20ns;
        D_TB <= '1';
        Enable_TB <= '0';
        Reset_TB <= '0';
    
        wait for 20ns;
        D_TB <= '0';
        Enable_TB <= '0';
        Reset_TB <= '0';
    
    end process;

end Sim;
