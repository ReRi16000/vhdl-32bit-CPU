----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2022 19:02:59
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_21363479_TB - Sim
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

entity RF_RegisterFile_32_15_21363479_TB is
--  Port ( );
end RF_RegisterFile_32_15_21363479_TB;

architecture Sim of RF_RegisterFile_32_15_21363479_TB is

component RF_RegisterFile_32_15_21363479 is
  Port (SA, DR, SB : in std_logic_vector (4 downto 0);
        Clock, RW : in std_ulogic;
        D : in std_logic_vector (31 downto 0);
        TA, TB, TD : in std_logic_vector (3 downto 0);
        A, B : out std_logic_vector (31 downto 0)
        );
end component RF_RegisterFile_32_15_21363479;

Signal SA_TB, DR_TB, SB_TB : std_logic_vector (4 downto 0);
Signal Clock_TB, RW_TB : std_ulogic := '0';
Signal D_TB : std_logic_vector (31 downto 0);
Signal TA_TB, TB_TB, TD_TB : std_logic_vector (3 downto 0);
Signal A_TB, B_TB : std_logic_vector (31 downto 0);

constant PERIOD : time := 20ns;

begin
    uut: RF_RegisterFile_32_15_21363479 port map
    (
        SA => SA_TB,
        DR => DR_TB,
        SB => SB_TB,
        Clock => Clock_TB,
        RW => RW_TB,
        D => D_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        A => A_TB,
        B => B_TB
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2;
    
    stim_proc : process
    
begin
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100010111";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00000";--0
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011000";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00001";--1
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011001";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00010";--2
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011010";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00011";--3
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011011";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00100";--4
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011100";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00101";--5
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011101";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00110";--6
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011110";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00111";--7
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100011111";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01000";--8
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100000";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01001";--9
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100001";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01010";--10
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100010";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01011";--11
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100011";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01100";--12
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100100";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01101";--13
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100101";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01110";--14
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100110";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01111";--15
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100100111";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10000";--16
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101000";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10001";--17
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101001";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10010";--18
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101010";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10011";--19
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101011";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10100";--20
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101100";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10101";--21
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101101";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10110";--22
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101110";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10111";--23
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100101111";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11000";--24
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110000";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11001";--25
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110001";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11010";--26
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110010";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11011";--27
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110011";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11100";--28
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110100";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11101";--29
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110101";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11110";--30
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110110";
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11111";--31
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100110111";
    RW_TB <= '1';
    TD_TB <= "0001";--1
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111000";
    RW_TB <= '1';
    TD_TB <= "0010";--2
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111001";
    RW_TB <= '1';
    TD_TB <= "0011";--3
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111010";
    RW_TB <= '1';
    TD_TB <= "0100";--4
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111011";
    RW_TB <= '1';
    TD_TB <= "0101";--5
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111100";
    RW_TB <= '1';
    TD_TB <= "0110";--6
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111101";
    RW_TB <= '1';
    TD_TB <= "0111";--7
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111110";
    RW_TB <= '1';
    TD_TB <= "1000";--8
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101100111111";
    RW_TB <= '1';
    TD_TB <= "1001";--9
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000000";
    RW_TB <= '1';
    TD_TB <= "1010";--10
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000001";
    RW_TB <= '1';
    TD_TB <= "1011";--11
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000010";
    RW_TB <= '1';
    TD_TB <= "1100";--12
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000011";
    RW_TB <= '1';
    TD_TB <= "1101";--13
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000100";
    RW_TB <= '1';
    TD_TB <= "1110";--14
    
    wait for PERIOD;
    D_TB <= "00000001010001011111101101000101";
    RW_TB <= '1';
    TD_TB <= "1111";--15
    
    
    end process;

end Sim;
