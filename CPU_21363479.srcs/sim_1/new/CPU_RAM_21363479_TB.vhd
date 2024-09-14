----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2022 20:13:50
-- Design Name: 
-- Module Name: CPU_RAM_21363479_TB - Sim
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_RAM_21363479_TB is
--  Port ( );
end CPU_RAM_21363479_TB;

architecture Sim of CPU_RAM_21363479_TB is

component CPU_RAM_21363479 is
      Port (Clock, WriteEnable : in std_logic;
            Address: in std_logic_vector (31 downto 0);
            DataIn : in std_logic_vector (31 downto 0);
            DataOut : out std_logic_vector (31 downto 0)
           );
end component CPU_RAM_21363479;

Signal WriteEnable_TB : std_logic;
Signal Address_TB : std_logic_vector (31 downto 0);
Signal DataIn_TB : std_logic_vector (31 downto 0);
Signal DataOut_TB : std_logic_vector (31 downto 0);
Signal Clock_TB : std_logic := '0';

begin

    uut: CPU_RAM_21363479 port map
    (
        Clock => Clock_TB,
        WriteEnable => WriteEnable_TB,
        Address => Address_TB,
        DataIn => DataIn_TB,
        DataOut => DataOut_TB
    );
    
    Clock_TB <= not Clock_TB after 3ns; 
    
    stim_proc : process
    
    begin
        
        wait for 6ns; --reading all of the addresses
        WriteEnable_TB <= '0'; --we do not want to write while we are reading
        Address_TB <= "00000000000000000000000000000000";

        wait for 6ns;
        Address_TB <= "00000000000000000000000000000001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000000111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000001111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000010111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000011111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000100111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000101111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000110111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000000111111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001000111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001001111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001010111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001011111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001100111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001101111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001110111";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111000";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111001";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111010";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111011";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111100";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111101";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111110";
        
        wait for 6ns;
        Address_TB <= "00000000000000000000000001111111";

        
        wait for 12ns;
        WriteEnable_TB <= '1'; --writing to the 32 addresses starting from 9
        DataIn_TB <= "00000000000000000000000000000001";
        Address_TB <= "00000000000000000000000000001001";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000010";
        Address_TB <= "00000000000000000000000000001010";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000011";
        Address_TB <= "00000000000000000000000000001011";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000100";
        Address_TB <= "00000000000000000000000000001100";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000101";
        Address_TB <= "00000000000000000000000000001101";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000110";
        Address_TB <= "00000000000000000000000000001110";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000000111";
        Address_TB <= "00000000000000000000000000001111";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001000";
        Address_TB <= "00000000000000000000000000010000";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001001";
        Address_TB <= "00000000000000000000000000010001";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001010";
        Address_TB <= "00000000000000000000000000010010";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001011";
        Address_TB <= "00000000000000000000000000010011";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001100";
        Address_TB <= "00000000000000000000000000010100";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001101";
        Address_TB <= "00000000000000000000000000010101";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001110";
        Address_TB <= "00000000000000000000000000010110";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000001111";
        Address_TB <= "00000000000000000000000000010111";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010000";
        Address_TB <= "00000000000000000000000000011000";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010001";
        Address_TB <= "00000000000000000000000000011001";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010010";
        Address_TB <= "00000000000000000000000000011010";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010011";
        Address_TB <= "00000000000000000000000000011011";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010100";
        Address_TB <= "00000000000000000000000000011100";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010101";
        Address_TB <= "00000000000000000000000000011101";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010110";
        Address_TB <= "00000000000000000000000000011110";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000010111";
        Address_TB <= "00000000000000000000000000011111";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011000";
        Address_TB <= "00000000000000000000000000100000";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011001";
        Address_TB <= "00000000000000000000000000100001";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011010";
        Address_TB <= "00000000000000000000000000100010";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011011";
        Address_TB <= "00000000000000000000000000100011";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011100";
        Address_TB <= "00000000000000000000000000100100";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011101";
        Address_TB <= "00000000000000000000000000100101";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011110";
        Address_TB <= "00000000000000000000000000100110";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000011111";
        Address_TB <= "00000000000000000000000000100111";
        
        wait for 12ns;
        DataIn_TB <= "00000000000000000000000000100000";
        Address_TB <= "00000000000000000000000000101000";
        
        wait for 12ns;
        WriteEnable_TB <= '0'; --we demonstrate that we cannot write while this signal is not set.
        DataIn_TB <= "00000000000000000000000000100001";
        Address_TB <= "00000000000000000000000000101001";
        
        wait for 12ns;
        
     end process;


end Sim;
