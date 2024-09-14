----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 05:51:01
-- Design Name: 
-- Module Name: CPU_Processor_Test04_21363479 - behavioural
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

entity CPU_Processor_Test04_21363479 is
    Port (FS : out std_logic_vector (4 downto 0);
          TA, TB, TD : out std_logic_vector (3 downto 0);
          MB, MD, RW, MW, MM, RC, RN, RV, RZ, IL, PI, Pl, FL : out std_logic;
          Reset, Clock : in std_logic;
          StatusVector : in std_logic_vector (3 downto 0);
          Opcode : in std_logic_vector (16 downto 0)  );
end CPU_Processor_Test04_21363479;

architecture behavioural of CPU_Processor_Test04_21363479 is

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

component CPU_Mux2_17Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (16 downto 0);
          Sel : in std_logic;
          Z : out std_logic_vector (16 downto 0)
         );
end component CPU_Mux2_17Bit_21363479;

component CPU_CAR_21363479 is
    Port (Address : in std_logic_vector (16 downto 0);
          Clock, LoadAdd, Reset : in std_logic;
          CMAdd : out std_logic_vector (16 downto 0)
         );
end component CPU_CAR_21363479;

Signal NA, CARin, ROMin : std_logic_vector (16 downto 0);
Signal DR, SA, SB : std_logic_vector (4 downto 0);
Signal MS : std_logic_vector (2 downto 0);
Signal CARload, NotZ, NotC, MC : std_logic;

begin

    CAR: CPU_CAR_21363479 port map(Address => CARin, Clock => Clock, LoadAdd => CARload, Reset => Reset, 
                                                                                              CMAdd => ROMin);

    MuxC: CPU_Mux2_17Bit_21363479 port map(in0 => NA, in1 => Opcode, Sel => MC, Z => CARin);

    NotZ <= Not(StatusVector(3));
    NotC <= Not(StatusVector(0));
    MuxS: CPU_SMux_21363479 port map(C_Flag => StatusVector(0), N_Flag => StatusVector(2), Not_C_Flag => NotC, 
                       Not_Z_Flag => NotZ, V_Flag => StatusVector(1), Z_Flag => StatusVector(3), MS => MS, 
                       CAR => CARload);
                       
    ControlROM: CPU_ControlMemory_21363479 port map
    (
        Address => ROMin,
        NA => NA,
        MS => MS,
        MC => MC,
        IL => IL,
        PI => PI,
        PL => PL,
        TD => TD,
        TA => TA,
        TB => TB,
        MB => MB,
        FS => FS,
        MD => MD,
        RW => RW,
        MM => MM,
        MW => MW,
        RV => RV,
        RC => RC,
        RN => RN,
        RZ => RZ,
        FL => FL
    );


end behavioural;
