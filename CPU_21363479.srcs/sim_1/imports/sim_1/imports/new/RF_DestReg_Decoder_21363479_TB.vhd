----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 16:01:09
-- Design Name: 
-- Module Name: RF_DestReg_Decoder_21363479_TB - Sim
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

entity RF_DestReg_Decoder_21363479_TB is
--  Port ( );
end RF_DestReg_Decoder_21363479_TB;

architecture Sim of RF_DestReg_Decoder_21363479_TB is

component RF_DestReg_Decoder_21363479 is
    port(A: in std_logic_vector (4 downto 0);
          D: out std_logic_vector (31 downto 0) );
end component;

Signal A_TB : std_logic_vector (4 downto 0);
Signal D_TB : std_logic_vector (31 downto 0);

constant PERIOD : time := 20ns;

begin
    uut: RF_DestReg_Decoder_21363479 port map
    (
        A => A_TB,
        D => D_TB
    );
    
    stim_proc : process

begin

    wait for PERIOD;
    A_TB <= "00000";
    
    wait for PERIOD;
    A_TB <= "00001";
    
    wait for PERIOD;
    A_TB <= "00010";
    
    wait for PERIOD;
    A_TB <= "00011";
    
    wait for PERIOD;
    A_TB <= "00100";
    
    wait for PERIOD;
    A_TB <= "00101";

    wait for PERIOD;
    A_TB <= "00110";
    
    wait for PERIOD;
    A_TB <= "00111";
    
    wait for PERIOD;
    A_TB <= "01000";
    
    wait for PERIOD;
    A_TB <= "01001";
    
    wait for PERIOD;
    A_TB <= "01010";
    
    wait for PERIOD;
    A_TB <= "01011";

    wait for PERIOD;
    A_TB <= "01100";
    
    wait for PERIOD;
    A_TB <= "01101";
    
    wait for PERIOD;
    A_TB <= "01110";
    
    wait for PERIOD;
    A_TB <= "01111";
    
    wait for PERIOD;
    A_TB <= "10000";
    
    wait for PERIOD;
    A_TB <= "10001";
    
    wait for PERIOD;
    A_TB <= "10010";
    
    wait for PERIOD;
    A_TB <= "10011";
    
    wait for PERIOD;
    A_TB <= "10100";
    
    wait for PERIOD;
    A_TB <= "10101";

    wait for PERIOD;
    A_TB <= "10110";
    
    wait for PERIOD;
    A_TB <= "10111";
    
    wait for PERIOD;
    A_TB <= "11000";
    
    wait for PERIOD;
    A_TB <= "11001";
    
    wait for PERIOD;
    A_TB <= "11010";
    
    wait for PERIOD;
    A_TB <= "11011";

    wait for PERIOD;
    A_TB <= "11100";
    
    wait for PERIOD;
    A_TB <= "11101";
    
    wait for PERIOD;
    A_TB <= "11110";
    
    wait for PERIOD;
    A_TB <= "11111";

    end process;
end Sim;
