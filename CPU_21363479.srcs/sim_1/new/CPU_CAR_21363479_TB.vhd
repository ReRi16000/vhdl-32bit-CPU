----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2022 19:57:34
-- Design Name: 
-- Module Name: CPU_CAR_21363479_TB - Sim
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

entity CPU_CAR_21363479_TB is
--  Port ( );
end CPU_CAR_21363479_TB;

architecture Sim of CPU_CAR_21363479_TB is

component CPU_CAR_21363479 is
    Port (Address : in std_logic_vector (16 downto 0);
          Clock, LoadAdd, Reset : in std_logic;
          CMAdd : out std_logic_vector (16 downto 0)
         );
end component CPU_CAR_21363479;

Signal Address_TB : std_logic_vector (16 downto 0) := "00000000001001111"; --79
Signal CMAdd_TB : std_logic_vector (16 downto 0);
Signal LoadAdd_TB, Reset_TB : std_logic;
Signal Clock_TB : std_logic := '0';

constant PERIOD : time := 300ns;

begin

    uut: CPU_CAR_21363479 port map
    (
        Address => Address_TB,
        Clock => Clock_TB,
        LoadAdd => LoadAdd_TB,
        Reset => Reset_TB,
        CMAdd => CMAdd_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    
    stim_proc : process
    begin
    
        wait for PERIOD;
        LoadAdd_TB <= '0';
        Reset_TB <= '0';
    
        wait for PERIOD;
        LoadAdd_TB <= '0';
        Reset_TB <= '1';
        
        wait for PERIOD;
        LoadAdd_TB <= '1';
        Reset_TB <= '0';
        
        wait for PERIOD;
        LoadAdd_TB <= '1';
        Reset_TB <= '1';
    
    end process;

end Sim;
