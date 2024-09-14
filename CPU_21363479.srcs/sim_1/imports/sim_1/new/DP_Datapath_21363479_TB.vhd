----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 23:01:45
-- Design Name: 
-- Module Name: DP_Datapath_21363479_TB - Sim
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

entity DP_Datapath_21363479_TB is
--  Port ( );
end DP_Datapath_21363479_TB;

architecture Sim of DP_Datapath_21363479_TB is

component DP_Datapath_21363479 is
    Port (IR_IN, DATA_IN : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW : in std_logic;
          DATA_OUT, ADD : out std_logic_vector (31 downto 0);
          C, N, V, Z : out std_logic
          );
end component DP_Datapath_21363479;

    Signal IR_IN_TB, DATA_IN_TB : std_logic_vector (31 downto 0);
    Signal FS_TB, DR_TB, SA_TB, SB_TB : std_logic_vector (4 downto 0);
    Signal TA_TB, TB_TB, TD_TB : std_logic_vector (3 downto 0);
    Signal MB_TB, MD_TB, RW_TB : std_logic;
    Signal DATA_OUT_TB, ADD_TB : std_logic_vector (31 downto 0);
    Signal C_TB, N_TB, V_TB, Z_TB : std_logic;
    Signal Clock_TB : std_logic := '0';

    constant PERIOD : time := 300ns;
    
begin
    uut: DP_Datapath_21363479 port map (
        IR_IN => IR_IN_TB, DATA_IN => DATA_IN_TB,
        FS => FS_TB, DR => DR_TB, SA => SA_TB, SB => SB_TB,
        TA => TA_TB, TB => TB_TB, TD => TD_TB,
        MB => MB_TB, MD => MD_TB, Clock => Clock_TB, RW => RW_TB,
        DATA_OUT => DATA_OUT_TB, ADD => ADD_TB,
        C => C_TB, N => N_TB, V => V_TB, Z => Z_TB
        ); 
        
        Clock_TB <= not Clock_TB after PERIOD/2; 
        
        
        stim_proc : process
begin
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00000";--0
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00001";--1
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00010";--2
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00011";--3
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00100";--4
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00101";--5
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00110";--6
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100010000";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "00111";--7
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01000";--8
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01001";--9
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01010";--10
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01011";--11
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01100";--12
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01101";--13
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01110";--14
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100001000";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "01111";--15
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10000";--16
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10001";--17
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10010";--18
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10011";--19
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10100";--20
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10101";--21
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10110";--22
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101100000000";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "10111";--23
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11000";--24
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11001";--25
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11010";--26
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11011";--27
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11100";--28
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11101";--29
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11110";--30
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011111000";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0000";
    DR_TB <= "11111";--31
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0001";--Temp1
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0010";--Temp2
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0011";--Temp3
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0100";--Temp4
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0101";--Temp5
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0110";--Temp6
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "0111";--Temp7
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011110000";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1000";--Temp8
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101111";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1001";--Temp9
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101110";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1010";--Temp10
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101101";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1011";--Temp11
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101100";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1100";--Temp12
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101011";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1101";--Temp13
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101010";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1110";--Temp14
    
    wait for PERIOD;
    DATA_IN_TB <= "00000001010001011111101011101001";
    MD_TB <= '1';
    RW_TB <= '1';
    TD_TB <= "1111";--Temp15
    
    wait for PERIOD;
    IR_IN_TB <= "00000001010001011111101100010111";
    MB_TB <= '0';
    MD_TB <= '0';
    SA_TB <= "01110";--14
    SB_TB <= "11000";--24
    DR_TB <= "01001";--09
    TA_TB <= "0000";
    TB_TB <= "0000";
    TD_TB <= "0000";
    
    wait for PERIOD;
    FS_TB <= "01110";--not(A)
    
    wait for PERIOD;
    FS_TB <= "00001";--A + 1
    
    wait for PERIOD;
    FS_TB <= "01100";--A XOR B
    
    wait for PERIOD;
    FS_TB <= "00000";--A
    
    wait for PERIOD;
    FS_TB <= "01010";--A OR B
    
    wait for PERIOD;
    FS_TB <= "11000";--slB
    
    wait for PERIOD;
    FS_TB <= "01000";--A AND B
    
    wait for PERIOD;
    FS_TB <= "10000";--B
    
    wait for PERIOD;
    FS_TB <= "00110";--A - 1
    
    wait for PERIOD;
    FS_TB <= "00111";--A
    
    wait for PERIOD;
    FS_TB <= "00101";--A + not(B) + 1
    
    wait for PERIOD;
    FS_TB <= "10100";--srB
    
    wait for PERIOD;
    FS_TB <= "00100";--A + not(B)
    
    wait for PERIOD;
    FS_TB <= "00011";--A + B + 1
    
    wait for PERIOD;
    FS_TB <= "00010";--A + B
    
    
    wait for PERIOD;
    IR_IN_TB <= "00000001010001011111101100010111";
    MB_TB <= '1';
    MD_TB <= '0';
    SA_TB <= "01110";--14
    SB_TB <= "11000";--24
    DR_TB <= "01001";--09
    TA_TB <= "0000";
    TB_TB <= "0000";
    TD_TB <= "0000";
    
    wait for PERIOD;
    FS_TB <= "01100";--A XOR B
    
    wait for PERIOD;
    FS_TB <= "01010";--A OR B
    
    wait for PERIOD;
    FS_TB <= "11000";--slB
    
    wait for PERIOD;
    FS_TB <= "01000";--A AND B
    
    wait for PERIOD;
    FS_TB <= "10000";--B
    
    wait for PERIOD;
    FS_TB <= "00101";--A + not(B) + 1
    
    wait for PERIOD;
    FS_TB <= "10100";--srB
    
    wait for PERIOD;
    FS_TB <= "00100";--A + not(B)
    
    wait for PERIOD;
    FS_TB <= "00011";--A + B + 1
    
    wait for PERIOD;
    FS_TB <= "00010";--A + B
    
    



        end process;
end Sim;
