----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 04:06:08
-- Design Name: 
-- Module Name: CPU_SMux_21363479_TB - Sim
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

entity CPU_SMux_21363479_TB is
--  Port ( );
end CPU_SMux_21363479_TB;

architecture Sim of CPU_SMux_21363479_TB is

component CPU_SMux_21363479 is
    Port (C_Flag,
          N_Flag,
          Not_C_Flag,
          Not_Z_Flag,
          V_Flag,
          Z_Flag : in std_logic;
          One : in std_logic := '1';
          Zero : in  std_logic := '0';
          MS : in std_logic_vector (2 downto 0);
          CAR : out std_logic
         );
end component CPU_SMux_21363479;

Signal C_Flag_TB,
       N_Flag_TB,
       Not_C_Flag_TB,
       Not_Z_Flag_TB,
       V_Flag_TB,
       Z_Flag_TB : std_logic;
Signal One_TB : std_logic := '1';
Signal Zero_TB :  std_logic := '0';
Signal MS_TB : std_logic_vector (2 downto 0);
Signal CAR_TB : std_logic;

begin
    uut: CPU_SMux_21363479 port map
    (
        C_Flag     => C_Flag_TB,
        N_Flag     => N_Flag_TB,
        Not_C_Flag => Not_C_Flag_TB,
        Not_Z_Flag => Not_Z_Flag_TB,
        V_Flag     => V_Flag_TB,
        Z_Flag     => Z_Flag_TB,
        MS         => MS_TB,
        CAR        => CAR_TB
    );
    
    stim_proc : process
    
    begin
    
    C_Flag_TB <= '0';  
    N_Flag_TB <= '1';   
    V_Flag_TB <= '0';  
    Z_Flag_TB <= '1';  
    Not_C_Flag_TB <= Not(C_Flag_TB);
    Not_Z_Flag_TB <= Not(Z_Flag_TB); 
    
    wait for 10ns;
    MS_TB <= "000"; 
    
    wait for 10ns;
    MS_TB <= "001"; 
    
    wait for 10ns;
    MS_TB <= "010"; 
    
    wait for 10ns;
    MS_TB <= "011"; 
    
    wait for 10ns;
    MS_TB <= "100"; 
    
    wait for 10ns;
    MS_TB <= "101"; 
    
    wait for 10ns;
    MS_TB <= "110"; 
    
    wait for 10ns;
    MS_TB <= "111"; 
    
    end process;
    
end Sim;
