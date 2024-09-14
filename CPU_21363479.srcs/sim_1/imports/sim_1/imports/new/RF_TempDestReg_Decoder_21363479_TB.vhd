----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 16:15:47
-- Design Name: 
-- Module Name: RF_TempDestReg_Decoder_21363479_TB - Sim
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

entity RF_TempDestReg_Decoder_21363479_TB is
--  Port ( );
end RF_TempDestReg_Decoder_21363479_TB;

architecture Sim of RF_TempDestReg_Decoder_21363479_TB is

component RF_TempDestReg_Decoder_21363479 is
    port(A: in std_logic_vector (3 downto 0);
          D: out std_logic_vector (15 downto 0) );
end component;

Signal A_TB : std_logic_vector (3 downto 0);
Signal D_TB : std_logic_vector (15 downto 0);

constant PERIOD : time := 20ns;

begin
    uut: RF_TempDestReg_Decoder_21363479 port map
    (
        A => A_TB,
        D => D_TB
    );
    
    stim_proc : process

begin

    wait for PERIOD;
    A_TB <= "0000";
    
    wait for PERIOD;
    A_TB <= "0001";
    
    wait for PERIOD;
    A_TB <= "0010";
    
    wait for PERIOD;
    A_TB <= "0011";
    
    wait for PERIOD;
    A_TB <= "0100";
    
    wait for PERIOD;
    A_TB <= "0101";

    wait for PERIOD;
    A_TB <= "0110";
    
    wait for PERIOD;
    A_TB <= "0111";
    
    wait for PERIOD;
    A_TB <= "1000";
    
    wait for PERIOD;
    A_TB <= "1001";
    
    wait for PERIOD;
    A_TB <= "1010";
    
    wait for PERIOD;
    A_TB <= "1011";

    wait for PERIOD;
    A_TB <= "1100";
    
    wait for PERIOD;
    A_TB <= "1101";
    
    wait for PERIOD;
    A_TB <= "1110";
    
    wait for PERIOD;
    A_TB <= "1111";

    end process;
end Sim;
