----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 15:53:42
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_21363479_TB - Sim
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

entity DP_RippleCarryAdder32Bit_21363479_TB is
--  Port ( );
end DP_RippleCarryAdder32Bit_21363479_TB;

architecture Sim of DP_RippleCarryAdder32Bit_21363479_TB is

component DP_RippleCarryAdder32Bit_21363479
    Port (A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          C_IN : in std_logic;
          SUM : out std_logic_vector (31 downto 0);
          C_OUT : out std_logic;
          V : out std_logic
         );
end component;

--Inputs

    Signal A_TB : std_logic_vector (31 downto 0) := (others => '0');
    Signal B_TB : std_logic_vector (31 downto 0) := (others => '0');
    Signal C_IN_TB : std_logic := '0';
  
--Outputs

    Signal SUM_TB : std_logic_vector (31 downto 0)  := (others => '0');
    Signal C_OUT_TB : std_logic := '0';
    Signal V_TB : std_logic;
    
begin 
	-- Instantiate the Unit Under Test (UUT)
    uut: DP_RippleCarryAdder32Bit_21363479 port map (
       A => A_TB,
       B => B_TB,
       C_IN => C_IN_TB,
       SUM => SUM_TB,
       C_OUT => C_OUT_TB,
       V => V_TB
       );

 stim_proc: process
 
   begin
   
   -- Test Vector A
   		
      A_TB <= "10111000101011000000111001001101";
      B_TB <= "01010110001001011001110110011001";
      C_IN_TB <= '0';
      
      wait for 200 ns;	

   -- Test Vector B 
   
      A_TB <= "00101101111101101101011110000111";
      B_TB <= "10010000000101101010001111010111";
      C_IN_TB <= '0';     

      wait for 200 ns;
      
   -- Test Vector C  
         	
      A_TB <= "11111010000111111011100010010000";
      B_TB <= "10001111111010100100011111001100";
      C_IN_TB <= '0'; 
      
      wait for 200 ns;
      
   -- Test Vector D  	

      A_TB <= "10110010011100000001000110001111";
      B_TB <= "11101110011010000100001010110001";
      C_IN_TB <= '0';
      
      wait for 200 ns;	
      
   -- Test Vector E 
  
      A_TB <= "00000100101100011001111001110011";
      B_TB <= "11111111110101110000010000101010";
      C_IN_TB <= '0';
   
      wait for 200 ns;	

   -- Test Vector F, worst case propagation delay of 168ns
    
      A_TB <= "11111111111111111111111111111111";
      B_TB <= "00000000000000000000000000000000";
      C_IN_TB <= '1';     

      wait for 200 ns;

   -- Test Vector G, testing student ID
    
      A_TB <= "00000001010001011111101100010111";
      B_TB <= "11111110101110100000010011101001"; --sets the Carry flag
      C_IN_TB <= '1';     

      wait for 200 ns;

   -- Test Vector H, testing student ID
    
      A_TB <= "00000001010001011111101100010111";
      B_TB <= "01111110101110100000010011101001"; --sets the Overflow flag
      C_IN_TB <= '1';     

      wait for 200 ns;
      	
 
   end process;

end Sim;
