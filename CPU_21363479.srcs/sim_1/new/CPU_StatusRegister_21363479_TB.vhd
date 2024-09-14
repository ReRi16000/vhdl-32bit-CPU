----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 01:56:13
-- Design Name: 
-- Module Name: CPU_StatusRegister_21363479_TB - Sim
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

entity CPU_StatusRegister_21363479_TB is
--  Port ( );
end CPU_StatusRegister_21363479_TB;

architecture Sim of CPU_StatusRegister_21363479_TB is

component CPU_StatusRegister_21363479 is
    Port (C_Flag,
          Clock,
          LoadFlags,
          N_Flag,
          Reset_C,
          Reset_N,
          Reset_V,
          Reset_Z,
          V_Flag,
          Z_Flag : in std_logic;
          StatusVector : out std_logic_vector (3 downto 0)
         );
end component CPU_StatusRegister_21363479;

Signal Clock_TB : std_logic := '0';
Signal C_Flag_TB,
       LoadFlags_TB,
       N_Flag_TB,
       Reset_C_TB,
       Reset_N_TB,
       Reset_V_TB,
       Reset_Z_TB,
       V_Flag_TB,
       Z_Flag_TB : std_logic;
Signal StatusVector_TB : std_logic_vector (3 downto 0);

begin

    uut: CPU_StatusRegister_21363479 port map
    (
        C_Flag    => C_Flag_TB,     
        Clock     => Clock_TB,      
        LoadFlags => LoadFlags_TB,  
        N_Flag    => N_Flag_TB,     
        Reset_C   => Reset_C_TB,    
        Reset_N   => Reset_N_TB,    
        Reset_V   => Reset_V_TB,    
        Reset_Z   => Reset_Z_TB,    
        V_Flag    => V_Flag_TB,     
        Z_Flag    => Z_Flag_TB,
        StatusVector => StatusVector_TB
   ); 
   
   Clock_TB <= not Clock_TB after 10ns;
   stim_proc : process
   
   begin
   
    wait for 20ns;
    LoadFlags_TB <= '1';
    C_Flag_TB <= '1';
    N_Flag_TB <= '1';
    V_Flag_TB <= '1';
    Z_Flag_TB <= '1';
    Reset_Z_TB <= '0';
    
    wait for 20ns;
    LoadFlags_TB <= '0';
    Reset_C_TB <= '1';
    
    wait for 20ns;
    Reset_C_TB <= '0';
    Reset_V_TB <= '1';
    
    wait for 20ns;
    Reset_V_TB <= '0';
    Reset_N_TB <= '1';
    
    wait for 20ns;
    Reset_N_TB <= '0';
    Reset_Z_TB <= '1';
   
   end process;
        
end Sim;
