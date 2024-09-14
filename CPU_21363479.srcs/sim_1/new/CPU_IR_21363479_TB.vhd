----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 13:40:14
-- Design Name: 
-- Module Name: CPU_IR_21363479_TB - Sim
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

entity CPU_IR_21363479_TB is
--  Port ( );
end CPU_IR_21363479_TB;

architecture Sim of CPU_IR_21363479_TB is

component CPU_IR_21363479 is
    Port (Clock, IL : in std_logic;
          Instruction : in std_logic_vector (31 downto 0);
          DR, SA, SB : out std_logic_vector (4 downto 0);
          Opcode : out std_logic_vector (16 downto 0)
          );
end component CPU_IR_21363479;

Signal IL_TB : std_logic;
Signal Instruction_TB : std_logic_vector (31 downto 0);
Signal DR_TB, SA_TB, SB_TB : std_logic_vector (4 downto 0);
Signal Opcode_TB : std_logic_vector (16 downto 0);
Signal Clock_TB : std_logic := '0';

begin
    uut: CPU_IR_21363479 port map
    (
        Clock => Clock_TB,
        IL => IL_TB,
        Instruction => Instruction_TB,
        DR => DR_TB,
        SA => SA_TB,
        SB => SB_TB,
        Opcode => Opcode_TB
    );
    
    Clock_TB <= not Clock_TB after 6ns; 
    
    stim_proc : process
    
    begin

        wait for 12ns;
        Instruction_TB(14 downto 10) <= "01001"; -- 9 into DR
        Instruction_TB(9 downto 5) <= "00111"; -- 7 into SA
        Instruction_TB(4 downto 0) <= "00100"; -- 4 into SB
        Instruction_TB(31 downto 15) <= "00000000000111111"; -- 63 into Opcode
        IL_TB <= '1';
        
        wait for 12ns;
        Instruction_TB(14 downto 10) <= "10110"; 
        Instruction_TB(9 downto 5) <= "11000"; 
        Instruction_TB(4 downto 0) <= "11011"; 
        Instruction_TB(31 downto 15) <= "11111111111000000"; 
        IL_TB <= '0'; --demonstrating that we cannot change the values when IL is not set
        
    end process;
end Sim;
