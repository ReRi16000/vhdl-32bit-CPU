----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2022 17:38:18
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_21363479_TB - Sim
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

entity CPU_Mux2_32Bit_21363479_TB is
--  Port ( );
end CPU_Mux2_32Bit_21363479_TB;

architecture Sim of CPU_Mux2_32Bit_21363479_TB is

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

Signal in0_TB, in1_TB : std_logic_vector (31 downto 0);
Signal s_TB : std_logic;
Signal z_TB : std_logic_vector (31 downto 0);

constant PERIOD : time := 20ns;

begin
    uut: CPU_Mux2_32Bit_21363479 port map
    (
        in0 => in0_TB,
        in1 => in1_TB,
        s =>  s_TB,
        z => z_TB
    );
    
    stim_proc : process

    begin

        in0_TB <= "00000001010001011111101100010111";
        in1_TB <= "00000001010001011111101100011000";
        
        wait for PERIOD;
        s_TB <= '0';
        
        wait for PERIOD;
        s_TB <= '1';

    end process;

end Sim;