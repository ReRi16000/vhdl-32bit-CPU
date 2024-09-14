----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2022 00:17:50
-- Design Name: 
-- Module Name: CPU_ControlMemory_21363479_TB - Sim
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

entity CPU_ControlMemory_21363479_TB is
--  Port ( );
end CPU_ControlMemory_21363479_TB;

architecture Sim of CPU_ControlMemory_21363479_TB is

component CPU_ControlMemory_21363479 is
Port ( Address : in std_logic_vector (16 downto 0);
        NA : out std_logic_vector (16 downto 0); -- 34-50
        MS : out std_logic_vector (2 downto 0); -- 31-33
        MC : out std_logic; -- 30
        IL : out std_logic; -- 29
        PI : out std_logic; -- 28
        PL : out std_logic; -- 27
        TD : out std_logic_vector (3 downto 0); -- 23-26
        TA : out std_logic_vector (3 downto 0); -- 19-22
        TB : out std_logic_vector (3 downto 0); -- 15-18
        MB : out std_logic; -- 14
        FS : out std_logic_vector (4 downto 0); -- 09-13
        MD : out std_logic; -- 08
        RW : out std_logic; -- 07
        MM : out std_logic; -- 06
        MW : out std_logic; -- 05
        RV : out std_logic; -- 04
        RC : out std_logic; -- 03
        RN : out std_logic; -- 02
        RZ : out std_logic; -- 01
        FL : out std_logic); -- 00 
end component CPU_ControlMemory_21363479;

Signal Address_TB : std_logic_vector (16 downto 0);
Signal NA_TB : std_logic_vector (16 downto 0); -- 34-50
Signal MS_TB : std_logic_vector (2 downto 0); -- 31-33
Signal MC_TB : std_logic; -- 30
Signal IL_TB : std_logic; -- 29
Signal PI_TB : std_logic; -- 28
Signal PL_TB : std_logic; -- 27
Signal TD_TB : std_logic_vector (3 downto 0); -- 23-26
Signal TA_TB : std_logic_vector (3 downto 0); -- 19-22
Signal TB_TB : std_logic_vector (3 downto 0); -- 15-18
Signal MB_TB : std_logic; -- 14
Signal FS_TB : std_logic_vector (4 downto 0); -- 09-13
Signal MD_TB : std_logic; -- 08
Signal RW_TB : std_logic; -- 07
Signal MM_TB : std_logic; -- 06
Signal MW_TB : std_logic; -- 05
Signal RV_TB : std_logic; -- 04
Signal RC_TB : std_logic; -- 03
Signal RN_TB : std_logic; -- 02
Signal RZ_TB : std_logic; -- 01
Signal FL_TB : std_logic; -- 00

begin

    uut: CPU_ControlMemory_21363479 port map
    (
        Address => Address_TB,
        NA => NA_TB,
        MS => MS_TB,
        MC => MC_TB,
        IL => IL_TB,
        PI => PI_TB,
        PL => PL_TB,
        TD => TD_TB,
        TA => TA_TB,
        TB => TB_TB,
        MB => MB_TB,
        FS => FS_TB,
        MD => MD_TB,
        RW => RW_TB,
        MM => MM_TB,
        MW => MW_TB,
        RV => RV_TB,
        RC => RC_TB,
        RN => RN_TB,
        RZ => RZ_TB,
        FL => FL_TB
    );
    
    stim_proc : process
    
begin

  wait for 6ns;
  Address_TB <= "00000000000000000";

  wait for 6ns;
  Address_TB <= "00000000000000001";

  wait for 6ns;
  Address_TB <= "00000000000000010";

  wait for 6ns;
  Address_TB <= "00000000000000011";

  wait for 6ns;
  Address_TB <= "00000000000000100";

  wait for 6ns;
  Address_TB <= "00000000000000101";

  wait for 6ns;
  Address_TB <= "00000000000000110";

  wait for 6ns;
  Address_TB <= "00000000000000111";

  wait for 6ns;
  Address_TB <= "00000000000001000";

  wait for 6ns;
  Address_TB <= "00000000000001001";

  wait for 6ns;
  Address_TB <= "00000000000001010";

  wait for 6ns;
  Address_TB <= "00000000000001011";

  wait for 6ns;
  Address_TB <= "00000000000001100";

  wait for 6ns;
  Address_TB <= "00000000000001101";

  wait for 6ns;
  Address_TB <= "00000000000001110";

  wait for 6ns;
  Address_TB <= "00000000000001111";

  wait for 6ns;
  Address_TB <= "00000000000010000";

  wait for 6ns;
  Address_TB <= "00000000000010001";

  wait for 6ns;
  Address_TB <= "00000000000010010";

  wait for 6ns;
  Address_TB <= "00000000000010011";

  wait for 6ns;
  Address_TB <= "00000000000010100";

  wait for 6ns;
  Address_TB <= "00000000000010101";

  wait for 6ns;
  Address_TB <= "00000000000010110";

  wait for 6ns;
  Address_TB <= "00000000000010111";

  wait for 6ns;
  Address_TB <= "00000000000011000";

  wait for 6ns;
  Address_TB <= "00000000000011001";

  wait for 6ns;
  Address_TB <= "00000000000011010";

  wait for 6ns;
  Address_TB <= "00000000000011011";

  wait for 6ns;
  Address_TB <= "00000000000011100";

  wait for 6ns;
  Address_TB <= "00000000000011101";

  wait for 6ns;
  Address_TB <= "00000000000011110";

  wait for 6ns;
  Address_TB <= "00000000000011111";

  wait for 6ns;
  Address_TB <= "00000000000100000";

  wait for 6ns;
  Address_TB <= "00000000000100001";

  wait for 6ns;
  Address_TB <= "00000000000100010";

  wait for 6ns;
  Address_TB <= "00000000000100011";

  wait for 6ns;
  Address_TB <= "00000000000100100";

  wait for 6ns;
  Address_TB <= "00000000000100101";

  wait for 6ns;
  Address_TB <= "00000000000100110";

  wait for 6ns;
  Address_TB <= "00000000000100111";

  wait for 6ns;
  Address_TB <= "00000000000101000";

  wait for 6ns;
  Address_TB <= "00000000000101001";

  wait for 6ns;
  Address_TB <= "00000000000101010";

  wait for 6ns;
  Address_TB <= "00000000000101011";

  wait for 6ns;
  Address_TB <= "00000000000101100";

  wait for 6ns;
  Address_TB <= "00000000000101101";

  wait for 6ns;
  Address_TB <= "00000000000101110";

  wait for 6ns;
  Address_TB <= "00000000000101111";

  wait for 6ns;
  Address_TB <= "00000000000110000";

  wait for 6ns;
  Address_TB <= "00000000000110001";

  wait for 6ns;
  Address_TB <= "00000000000110010";

  wait for 6ns;
  Address_TB <= "00000000000110011";

  wait for 6ns;
  Address_TB <= "00000000000110100";

  wait for 6ns;
  Address_TB <= "00000000000110101";

  wait for 6ns;
  Address_TB <= "00000000000110110";

  wait for 6ns;
  Address_TB <= "00000000000110111";

  wait for 6ns;
  Address_TB <= "00000000000111000";

  wait for 6ns;
  Address_TB <= "00000000000111001";

  wait for 6ns;
  Address_TB <= "00000000000111010";

  wait for 6ns;
  Address_TB <= "00000000000111011";

  wait for 6ns;
  Address_TB <= "00000000000111100";

  wait for 6ns;
  Address_TB <= "00000000000111101";

  wait for 6ns;
  Address_TB <= "00000000000111110";

  wait for 6ns;
  Address_TB <= "00000000000111111";

  wait for 6ns;
  Address_TB <= "00000000001000000";

  wait for 6ns;
  Address_TB <= "00000000001000001";

  wait for 6ns;
  Address_TB <= "00000000001000010";

  wait for 6ns;
  Address_TB <= "00000000001000011";

  wait for 6ns;
  Address_TB <= "00000000001000100";

  wait for 6ns;
  Address_TB <= "00000000001000101";

  wait for 6ns;
  Address_TB <= "00000000001000110";

  wait for 6ns;
  Address_TB <= "00000000001000111";

  wait for 6ns;
  Address_TB <= "00000000001001000";

  wait for 6ns;
  Address_TB <= "00000000001001001";

  wait for 6ns;
  Address_TB <= "00000000001001010";

  wait for 6ns;
  Address_TB <= "00000000001001011";

  wait for 6ns;
  Address_TB <= "00000000001001100";

  wait for 6ns;
  Address_TB <= "00000000001001101";

  wait for 6ns;
  Address_TB <= "00000000001001110";

  wait for 6ns;
  Address_TB <= "00000000001001111";

  wait for 6ns;
  Address_TB <= "00000000001010000";

  wait for 6ns;
  Address_TB <= "00000000001010001";

  wait for 6ns;
  Address_TB <= "00000000001010010";

  wait for 6ns;
  Address_TB <= "00000000001010011";

  wait for 6ns;
  Address_TB <= "00000000001010100";

  wait for 6ns;
  Address_TB <= "00000000001010101";

  wait for 6ns;
  Address_TB <= "00000000001010110";

  wait for 6ns;
  Address_TB <= "00000000001010111";

  wait for 6ns;
  Address_TB <= "00000000001011000";

  wait for 6ns;
  Address_TB <= "00000000001011001";

  wait for 6ns;
  Address_TB <= "00000000001011010";

  wait for 6ns;
  Address_TB <= "00000000001011011";

  wait for 6ns;
  Address_TB <= "00000000001011100";

  wait for 6ns;
  Address_TB <= "00000000001011101";

  wait for 6ns;
  Address_TB <= "00000000001011110";

  wait for 6ns;
  Address_TB <= "00000000001011111";

  wait for 6ns;
  Address_TB <= "00000000001100000";

  wait for 6ns;
  Address_TB <= "00000000001100001";

  wait for 6ns;
  Address_TB <= "00000000001100010";

  wait for 6ns;
  Address_TB <= "00000000001100011";

  wait for 6ns;
  Address_TB <= "00000000001100100";

  wait for 6ns;
  Address_TB <= "00000000001100101";

  wait for 6ns;
  Address_TB <= "00000000001100110";

  wait for 6ns;
  Address_TB <= "00000000001100111";

  wait for 6ns;
  Address_TB <= "00000000001101000";

  wait for 6ns;
  Address_TB <= "00000000001101001";

  wait for 6ns;
  Address_TB <= "00000000001101010";

  wait for 6ns;
  Address_TB <= "00000000001101011";

  wait for 6ns;
  Address_TB <= "00000000001101100";

  wait for 6ns;
  Address_TB <= "00000000001101101";

  wait for 6ns;
  Address_TB <= "00000000001101110";

  wait for 6ns;
  Address_TB <= "00000000001101111";

  wait for 6ns;
  Address_TB <= "00000000001110000";

  wait for 6ns;
  Address_TB <= "00000000001110001";

  wait for 6ns;
  Address_TB <= "00000000001110010";

  wait for 6ns;
  Address_TB <= "00000000001110011";

  wait for 6ns;
  Address_TB <= "00000000001110100";

  wait for 6ns;
  Address_TB <= "00000000001110101";

  wait for 6ns;
  Address_TB <= "00000000001110110";

  wait for 6ns;
  Address_TB <= "00000000001110111";

  wait for 6ns;
  Address_TB <= "00000000001111000";

  wait for 6ns;
  Address_TB <= "00000000001111001";

  wait for 6ns;
  Address_TB <= "00000000001111010";

  wait for 6ns;
  Address_TB <= "00000000001111011";

  wait for 6ns;
  Address_TB <= "00000000001111100";

  wait for 6ns;
  Address_TB <= "00000000001111101";

  wait for 6ns;
  Address_TB <= "00000000001111110";

  wait for 6ns;
  Address_TB <= "00000000001111111";
  
  end process;
  

end Sim;
