----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 02:30:59
-- Design Name: 
-- Module Name: CPU_Processor_21363479 - behavioural
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

entity CPU_Processor_21363479 is
    Port (Clock, Reset : in std_logic);
end CPU_Processor_21363479;

architecture behavioural of CPU_Processor_21363479 is

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

Signal ROMin : std_logic_vector (16 downto 0);               
Signal NA : std_logic_vector (16 downto 0); -- 34-50         
Signal MS : std_logic_vector (2 downto 0); -- 31-33          
Signal MC, -- 30                                 
       IL, -- 29                                 
       PI, -- 28                                 
       PL : std_logic; -- 27                                 
Signal TD : std_logic_vector (3 downto 0); -- 23-26          
Signal TA : std_logic_vector (3 downto 0); -- 19-22          
Signal TB : std_logic_vector (3 downto 0); -- 15-18          
Signal MB : std_logic; -- 14                                 
Signal FS : std_logic_vector (4 downto 0); -- 09-13          
Signal MD, -- 08                                 
       RW, -- 07                                 
       MM, -- 06                                 
       MW, -- 05                                 
       RV, -- 04                                 
       RC, -- 03                                 
       RN, -- 02                                 
       RZ, -- 01                                 
       FL : std_logic; -- 00       
       
component CPU_IR_21363479 is
    Port (Clock, IL : in std_logic;
          Instruction : in std_logic_vector (31 downto 0);
          DR, SA, SB : out std_logic_vector (4 downto 0);
          Opcode : out std_logic_vector (16 downto 0)
          );
end component CPU_IR_21363479;   

Signal DR, SA, SB : std_logic_vector (4 downto 0);                   
Signal Opcode : std_logic_vector (16 downto 0);

component CPU_SignExtend_21363479 is
    Port (
          Input : in std_logic_vector (9 downto 0);
          Output : out std_logic_vector (31 downto 0)
         );
end component CPU_SignExtend_21363479; 

component CPU_PC_21363479 is
    Port (Clock, PI, PL, Reset : in std_logic;
          Displacement : in std_logic_vector (31 downto 0);
          InstAdd : out std_logic_vector (31 downto 0)
          );
end component CPU_PC_21363479;

Signal PCout : std_logic_vector (31 downto 0);
Signal Displace : std_logic_vector (31 downto 0);

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

component CPU_RAM_21363479 is
      Port ( Clock, WriteEnable : in std_logic;
             Address: in std_logic_vector (31 downto 0);
             DataIn : in std_logic_vector (31 downto 0);
             DataOut : out std_logic_vector (31 downto 0)
           );
end component CPU_RAM_21363479;

Signal RAMin : std_logic_vector (31 downto 0);
Signal RAMout : std_logic_vector (31 downto 0);   

component CPU_ZeroFill_21363479 is
    Port (SB : in std_logic_vector (4 downto 0);
          MuxB : out std_logic_vector (31 downto 0) := "00000000000000000000000000000000"
         );
end component CPU_ZeroFill_21363479;

component DP_Datapath_21363479 is
    Port (IR_IN, DATA_IN : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW : in std_logic;
          DATA_OUT, ADD : out std_logic_vector (31 downto 0);
          C, N, V, Z : out std_logic
          );
end component DP_Datapath_21363479;

Signal IRin : std_logic_vector (31 downto 0);
Signal DPadd : std_logic_vector (31 downto 0);
Signal DPout : std_logic_vector (31 downto 0);
Signal C, N, V, Z : std_logic;

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

Signal Status : std_logic_vector (3 downto 0);
Signal NotC : std_logic;
Signal NotZ : std_logic;

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

Signal CARin : std_logic_vector (16 downto 0);
Signal CARload : std_logic;

begin

    CAR: CPU_CAR_21363479 port map(Address => CARin, Clock => Clock, LoadAdd => CARload, Reset => Reset, 
                                                                                              CMAdd => ROMin);

    MuxC: CPU_Mux2_17Bit_21363479 port map(in0 => NA, in1 => Opcode, Sel => MC, Z => CARin);

    MuxS: CPU_SMux_21363479 port map(C_Flag => Status(0), N_Flag => Status(2), Not_C_Flag => NotC, 
                       Not_Z_Flag => NotZ, V_Flag => Status(1), Z_Flag => Status(3), MS => MS, CAR => CARload);
                       NotC <= not(Status(0));
                       NotZ <= not(Status(3));

    StatReg: CPU_StatusRegister_21363479 port map(C_Flag => C, Clock => Clock, LoadFlags => FL, N_Flag => N,
                          Reset_C => RC, Reset_N => RN, Reset_V => RV, Reset_Z => RZ, V_Flag => V, Z_Flag => Z, 
                          StatusVector => Status);  

    Datapath: DP_Datapath_21363479 port map(IR_IN => IRin, DATA_IN => RAMout, FS => FS, DR => DR, SA => SA,
                        SB => SB, TA => TA, TB => TB, TD => TD, MB => MB, MD => MD, Clock => Clock, RW => RW,
                        DATA_OUT => DPout, ADD => DPadd, C => C, N => N, V => V, Z => Z);

    ZeroFill: CPU_ZeroFill_21363479 port map(SB => SB, MuxB => IRin);

    RAM: CPU_RAM_21363479 port map(Clock => Clock, WriteEnable => MW, Address => RAMin, DataIn => DPout, 
                                                                                           DataOut => RAMout);

    MuxM: CPU_Mux2_32Bit_21363479 port map(in0 => DPadd, in1 => PCout, s => MM, z => RAMin);

    PC: CPU_PC_21363479 port map(Clock => Clock, PI => PI, PL => PL, Reset => Reset, Displacement => Displace,
                                                                                            InstAdd => PCout);

    SignExt: CPU_SignExtend_21363479 port map(Input(9 downto 5) => DR, Input(4 downto 0) => SB, 
                                                                                          Output => Displace);

    InstReg: CPU_IR_21363479 port map(Clock => Clock, IL => IL, Instruction => RAMout, DR => DR, SA => SA,
                                                                                  SB => SB, Opcode => Opcode);

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
