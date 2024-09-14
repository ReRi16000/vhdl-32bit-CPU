----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2022 04:56:44
-- Design Name: 
-- Module Name: CPU_Processor_Test01_21363479 - behavioural
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

entity CPU_Processor_Test01_21363479 is
    Port (IR_IN, InstAddress : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW, MW, MM : in std_logic;
          C, N, V, Z : out std_logic );
end CPU_Processor_Test01_21363479;

architecture behavioural of CPU_Processor_Test01_21363479 is

component DP_Datapath_21363479 is
    Port (IR_IN, DATA_IN : in std_logic_vector (31 downto 0);
          FS, DR, SA, SB : in std_logic_vector (4 downto 0);
          TA, TB, TD : in std_logic_vector (3 downto 0);
          MB, MD, Clock, RW : in std_logic;
          DATA_OUT, ADD : out std_logic_vector (31 downto 0);
          C, N, V, Z : out std_logic
          );
end component DP_Datapath_21363479;

component CPU_RAM_21363479 is
      Port ( Clock, WriteEnable : in std_logic;
             Address: in std_logic_vector (31 downto 0);
             DataIn : in std_logic_vector (31 downto 0);
             DataOut : out std_logic_vector (31 downto 0)
           );
end component CPU_RAM_21363479;

component CPU_Mux2_32Bit_21363479 is
    Port (in0, in1 : in std_logic_vector (31 downto 0);
          s : in std_logic;
          z: out std_logic_vector (31 downto 0)
          );
end component CPU_Mux2_32Bit_21363479;

Signal DPadd, DPout, RAMin, RAMout : std_logic_vector (31 downto 0);

begin

    MuxM: CPU_Mux2_32Bit_21363479 port map(in0 => DPadd, in1 => InstAddress, s => MM, z => RAMin);

    RAM: CPU_RAM_21363479 port map(Clock => Clock, WriteEnable => MW, Address => RAMin, DataIn => DPout, 
                                                                                           DataOut => RAMout);

    Datapath: DP_Datapath_21363479 port map(IR_IN => IR_IN, DATA_IN => RAMout, FS => FS, DR => DR, SA => SA,
                        SB => SB, TA => TA, TB => TB, TD => TD, MB => MB, MD => MD, Clock => Clock, RW => RW,
                        DATA_OUT => DPout, ADD => DPadd, C => C, N => N, V => V, Z => Z);


end behavioural;
