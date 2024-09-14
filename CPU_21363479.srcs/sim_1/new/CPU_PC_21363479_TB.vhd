----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 19:04:31
-- Design Name: 
-- Module Name: CPU_PC_21363479_TB - Sim
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

entity CPU_PC_21363479_TB is
--  Port ( );
end CPU_PC_21363479_TB;

architecture Sim of CPU_PC_21363479_TB is

component CPU_PC_21363479 is
    Port (Clock, PI, PL, Reset : in std_logic;
          Displacement : in std_logic_vector (31 downto 0);
          InstAdd : out std_logic_vector (31 downto 0)
          );
end component CPU_PC_21363479;

Signal PI_TB, PL_TB, Reset_TB : std_logic;             
Signal Displacement_TB : std_logic_vector (31 downto 0);
Signal InstAdd_TB : std_logic_vector (31 downto 0);  
Signal Clock_TB : std_logic := '0';   

begin

    uut: CPU_PC_21363479 port map
    (
        Clock => Clock_TB,
        PI => PI_TB,
        PL => PL_TB,
        Reset => Reset_TB,
        Displacement => Displacement_TB,
        InstAdd => InstAdd_TB
    );
    
    Clock_TB <= not Clock_TB after 150ns;
    
    stim_proc : process
    
    begin
    
    wait for 300ns;
    PI_TB <= '0';
    PL_TB <= '0';
    Reset_TB <= '1';
    Displacement_TB <= "00000000000000000000000000000000";
    
    wait for 300ns;
    PI_TB <= '1';
    PL_TB <= '0';
    Reset_TB <= '0';
    
    wait for 300ns;
    PI_TB <= '0';
    PL_TB <= '1';
    Reset_TB <= '0';
    Displacement_TB <= "00000000000000000000000001001111";
    
    end process;

end Sim;
