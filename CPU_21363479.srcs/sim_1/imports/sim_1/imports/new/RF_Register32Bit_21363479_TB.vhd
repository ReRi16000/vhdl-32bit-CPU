----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 16:30:27
-- Design Name: 
-- Module Name: RF_Register32Bit_21363479_TB - Sim
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

entity RF_Register32Bit_21363479_TB is
--  Port ( );
end RF_Register32Bit_21363479_TB;

architecture Sim of RF_Register32Bit_21363479_TB is

component RF_Register32Bit_21363479
    port (A : in std_logic_vector (31 downto 0);
          load, clock : in std_logic;
          D : out std_logic_vector (31 downto 0)
         );
end component;

    signal D_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal load_TB : std_ulogic:= '0';
    signal clock_TB : std_ulogic:= '0';
    signal A_TB : std_logic_vector(31 downto 0):= (others => '0');
    
    constant PERIOD : time := 20ns;
   

begin

   uut: RF_Register32Bit_21363479 port map (
          D => D_TB,
          clock => clock_TB,
          load => Load_TB,
          A => A_TB
        );
        
   clock_TB <= not clock_TB after PERIOD/2;
   
   stim_proc: process

   begin
   
      wait until clock_TB'event and clock_TB='1';
      Load_TB <= '0' after PERIOD/4;
      A_TB <= "00000001010001011111101100010111" after PERIOD/4;
      
      wait until clock_TB'event and clock_TB='1';
      load_TB <= '1' after PERIOD/4;
      
   end process; 
   
end;       