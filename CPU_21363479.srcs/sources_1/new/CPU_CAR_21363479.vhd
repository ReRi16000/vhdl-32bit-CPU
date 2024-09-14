----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 20:06:19
-- Design Name: 
-- Module Name: CPU_CAR_21363479 - behavioural
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_CAR_21363479 is
    Port (Address : in std_logic_vector (16 downto 0);
          Clock, LoadAdd, Reset : in std_logic;
          CMAdd : out std_logic_vector (16 downto 0)
         );
end CPU_CAR_21363479;

architecture behavioural of CPU_CAR_21363479 is

component CPU_Mux2_17Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (16 downto 0);
          Sel : in std_logic;
          Z : out std_logic_vector (16 downto 0)
         );
end component CPU_Mux2_17Bit_21363479;

Signal RegIn, RegOut, Operation : std_logic_vector (16 downto 0);
Signal Inc : std_logic_vector (16 downto 0);

begin
    
    LorA : CPU_Mux2_17Bit_21363479 port map (in0 => Inc, in1 => Address, Sel => LoadAdd, Z => Operation);
    OorR : CPU_Mux2_17Bit_21363479 port map (in0 => Operation, in1 => "00000000000000000", Sel => Reset, 
                                                                                                   Z => RegIn);
    
    process (Clock)
    begin
       if Clock'event and Clock='1' then
        RegOut <= RegIn;
       end if;
    end process;
    
    CMAdd <= RegOut;
    Inc <= RegOut + "00000000000000001";                                                                                        


end behavioural;
