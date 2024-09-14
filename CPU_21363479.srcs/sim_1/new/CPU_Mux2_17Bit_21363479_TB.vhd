----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 18:26:07
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_21363479_TB - Sim
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

entity CPU_Mux2_17Bit_21363479_TB is
--  Port ( );
end CPU_Mux2_17Bit_21363479_TB;

architecture Sim of CPU_Mux2_17Bit_21363479_TB is

component CPU_Mux2_17Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (16 downto 0);
          Sel : in std_logic;
          Z : out std_logic_vector (16 downto 0)
         );
end component CPU_Mux2_17Bit_21363479;

Signal in0_TB, in1_TB : std_logic_vector (16 downto 0);
Signal Sel_TB : std_logic;
Signal Z_TB : std_logic_vector (16 downto 0);

begin
    
    uut: CPU_Mux2_17Bit_21363479 port map
    (
        in0 => in0_TB,
        in1 => in1_TB,
        Sel => Sel_TB,
        Z => Z_TB
    );
    
    stim_proc : process
    
    begin
    
    in0_TB <= "00000000000000000";
    in1_TB <= "11111111111111111";
    
    wait for 20ns;
    Sel_TB <= '0';
    
    wait for 20ns;
    Sel_TB <= '1';
    
    end process;

end Sim;
