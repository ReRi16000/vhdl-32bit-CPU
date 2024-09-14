----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2023 21:13:15
-- Design Name: 
-- Module Name: CPU_Processor_Test01_21363479_TB - Sim
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

entity CPU_Processor_Test01_21363479_TB is
--  Port ( );
end CPU_Processor_Test01_21363479_TB;

architecture Sim of CPU_Processor_Test01_21363479_TB is

component CPU_Processor_Test01_21363479 is
    Port (IR_IN, InstAddress : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW, MW, MM : in std_logic;
          C, N, V, Z : out std_logic );
end component CPU_Processor_Test01_21363479;

Signal IR_IN_TB, InstAddress_TB : std_logic_vector (31 downto 0);
Signal FS_TB, DR_TB, SA_TB, SB_TB : std_logic_vector (4 downto 0);
Signal TA_TB, TB_TB, TD_TB : std_logic_vector (3 downto 0);
Signal MB_TB, MD_TB, RW_TB, MW_TB, MM_TB, C_TB, N_TB, V_TB, Z_TB  : std_logic;

Signal Clock_TB : std_logic := '0';

constant PERIOD : time := 300ns;

begin

    uut: CPU_Processor_Test01_21363479 port map
    (
        IR_IN => IR_IN_TB,
        InstAddress => InstAddress_TB,
        FS => FS_TB,
        DR => DR_TB,
        SA => SA_TB,
        SB => SB_TB,
        TA => TA_TB,
        TB => TB_TB,
        TD => TD_TB,
        MB => MB_TB,
        MD => MD_TB,
        Clock => Clock_TB,
        RW => RW_TB,
        MW => MW_TB,
        MM => MM_TB,
        C => C_TB,
        N => N_TB,
        V => V_TB,
        Z => Z_TB 
    );
    
    Clock_TB <= not Clock_TB after PERIOD/2; 
    stim_proc : process
    
    begin
    
        wait for PERIOD; --loading the registers with data from the RAM--
        SA_TB <= "00000";
        SB_TB <= "00000";
        TA_TB <= "0000";
        TB_TB <= "0000";
        FS_TB <= "00000";
        IR_IN_TB <= "00000000000000000000000000000000";
        MB_TB <= '0';
        MD_TB <= '1';
        MM_TB <= '1';
        MW_TB <= '0';
        RW_TB <= '1';
        InstAddress_TB <= "00000000000000000000000000000000";
        DR_TB <= "00000";
        TD_TB <= "0000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000001";
        DR_TB <= "00001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000010";
        DR_TB <= "00010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000011";
        DR_TB <= "00011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000100";
        DR_TB <= "00100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000101";
        DR_TB <= "00101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000110";
        DR_TB <= "00110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000111";
        DR_TB <= "00111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001000";
        DR_TB <= "01000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001001";
        DR_TB <= "01001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001010";
        DR_TB <= "01010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001011";
        DR_TB <= "01011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001100";
        DR_TB <= "01100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001101";
        DR_TB <= "01101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001110";
        DR_TB <= "01110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001111";
        DR_TB <= "01111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010000";
        DR_TB <= "10000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010001";
        DR_TB <= "10001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010010";
        DR_TB <= "10010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010011";
        DR_TB <= "10011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010100";
        DR_TB <= "10100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010101";
        DR_TB <= "10101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010110";
        DR_TB <= "10110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000010111";
        DR_TB <= "10111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011000";
        DR_TB <= "11000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011001";
        DR_TB <= "11001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011010";
        DR_TB <= "11010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011011";
        DR_TB <= "11011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011100";
        DR_TB <= "11100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011101";
        DR_TB <= "11101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011110";
        DR_TB <= "11110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000011111";
        DR_TB <= "11111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100000";
        DR_TB <= "00000";
        TD_TB <= "0001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100001";
        TD_TB <= "0010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100010";
        TD_TB <= "0011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100011";
        TD_TB <= "0100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100100";
        TD_TB <= "0101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100101";
        TD_TB <= "0110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100110";
        TD_TB <= "0111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000100111";
        TD_TB <= "1000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101000";
        TD_TB <= "1001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101001";
        TD_TB <= "1010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101010";
        TD_TB <= "1011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101011";
        TD_TB <= "1100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101100";
        TD_TB <= "1101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101101";
        TD_TB <= "1110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000101110";
        TD_TB <= "1111";

        wait for PERIOD; --micro-operations--
        SA_TB <= "01001";
        SB_TB <= "01010";
        TD_TB <= "0000";
        MB_TB <= '0';
        MD_TB <= '0';
        DR_TB <= "01011";--11
        FS_TB <= "01110";--not(A)
    
        wait for PERIOD;
        DR_TB <= "01100";--12
        FS_TB <= "00001";--A + 1
        
        wait for PERIOD;
        DR_TB <= "01101";--13
        FS_TB <= "01100";--A XOR B
        
        wait for PERIOD;
        DR_TB <= "01110";
        FS_TB <= "00000";--A
        
        wait for PERIOD;
        DR_TB <= "01111";
        FS_TB <= "01010";--A OR B
        
        wait for PERIOD;
        DR_TB <= "10000";
        FS_TB <= "11000";--slB
        
        wait for PERIOD;
        DR_TB <= "10001";
        FS_TB <= "01000";--A AND B
        
        wait for PERIOD;
        DR_TB <= "10010";
        FS_TB <= "10000";--B
        
        wait for PERIOD;
        DR_TB <= "10011";
        FS_TB <= "00110";--A - 1
        
        wait for PERIOD;
        DR_TB <= "10100";
        FS_TB <= "00111";--A
        
        wait for PERIOD;
        DR_TB <= "10101";
        FS_TB <= "00101";--A + not(B) + 1
        
        wait for PERIOD;
        DR_TB <= "10110";
        FS_TB <= "10100";--srB
        
        wait for PERIOD;
        DR_TB <= "10111";
        FS_TB <= "00100";--A + not(B)
        
        wait for PERIOD;
        DR_TB <= "11000";
        FS_TB <= "00011";--A + B + 1
        
        wait for PERIOD;
        DR_TB <= "11001";
        FS_TB <= "00010";--A + B
        
        wait for PERIOD; --storing operation results in RAM--
        MM_TB <= '1';
        MW_TB <= '1';
        RW_TB <= '0';
        InstAddress_TB <= "00000000000000000000000000000000";
        SB_TB <= "01011";--11
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000001";
        SB_TB <= "01100";--12
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000010";
        SB_TB <= "01101";--13
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000011";
        SB_TB <= "01110";--14
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000100";
        SB_TB <= "01111";--15
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000101";
        SB_TB <= "10000";--16
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000110";
        SB_TB <= "10001";--17
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000111";
        SB_TB <= "10010";--18
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001000";
        SB_TB <= "10011";--19
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001001";
        SB_TB <= "10100";--20
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001010";
        SB_TB <= "10101";--21
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001011";
        SB_TB <= "10110";--22
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001100";
        SB_TB <= "10111";--23
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001101";
        SB_TB <= "11000";--24
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001110";
        SB_TB <= "11001";--25
        
        wait for PERIOD; --writing the results from RAM back into REG01
        MD_TB <= '1';
        MW_TB <= '0';
        RW_TB <= '1';
        DR_TB <= "00001";
        InstAddress_TB <= "00000000000000000000000000000000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000110";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000000111";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001000";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001001";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001010";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001011";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001100";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001101";
        
        wait for PERIOD;
        InstAddress_TB <= "00000000000000000000000000001110";
        
    end process;

end Sim;
