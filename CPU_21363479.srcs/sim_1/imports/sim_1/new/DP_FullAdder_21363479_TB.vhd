----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 15:10:23
-- Design Name: 
-- Module Name: DP_FullAdder_21363479_TB - Sim
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

entity DP_FullAdder_21363479_TB is
--  Port ( );
end DP_FullAdder_21363479_TB;

architecture Sim of DP_FullAdder_21363479_TB is

component DP_FullAdder_21363479 is
    port(A : in std_logic;
         B : in std_logic;
         C_IN : in std_logic;
         SUM : out std_logic;
         C_OUT : out std_logic
         );
end component;
   
   Signal A_TB : std_logic := '0';
   Signal B_TB : std_logic := '0';
   Signal C_IN_TB : std_logic := '0';   
   Signal SUM_TB : std_logic := '0';
   Signal C_OUT_TB : std_logic := '0';
      
begin

   uut: DP_FullAdder_21363479 port map
        (
          A => A_TB,
          B => B_TB,
          C_IN => C_IN_TB,
          SUM => SUM_TB,
          C_OUT => C_OUT_TB
        );

  stim_proc: process
  
   begin	
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';     
         
      wait for 10 ns;	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';     
        
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';     
         
      wait for 10 ns;	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '1';
      
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';
      
      wait for 10 ns;	
	  A_TB <= '0'; 
	  B_TB <= '1'; 
	  C_IN_TB <= '0'; 
	  
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';   
          
      wait for 10 ns;	
	  A_TB <= '0'; 
	  B_TB <= '1'; 
	  C_IN_TB <= '1';

      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';
      
      wait for 10 ns;	
      A_TB <= '1'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';
      
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';  
            
      wait for 10 ns;	
      A_TB <= '1'; 
      B_TB <= '0'; 
      C_IN_TB <= '1';
      
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0';
      
      wait for 10 ns;	
	  A_TB <= '1'; 
	  B_TB <= '1'; 
	  C_IN_TB <= '0';
	  
      wait for 20 ns;-- all inputs to 0	
      A_TB <= '0'; 
      B_TB <= '0'; 
      C_IN_TB <= '0'; 
            
      wait for 10 ns;	
	  A_TB <= '1'; 
	  B_TB <= '1'; 
	  C_IN_TB <= '1';    
 
   end process;

end Sim;
