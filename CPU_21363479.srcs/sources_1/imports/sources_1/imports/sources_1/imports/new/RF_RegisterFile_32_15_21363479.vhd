----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 16:09:29
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_21363479 - Behavioral
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

entity RF_RegisterFile_32_15_21363479 is
  Port (SA, DR, SB : in std_logic_vector (4 downto 0);
        Clock, RW : in std_ulogic;
        D : in std_logic_vector (31 downto 0);
        TA, TB, TD : in std_logic_vector (3 downto 0);
        A, B : out std_logic_vector (31 downto 0)
        );
end RF_RegisterFile_32_15_21363479;

architecture behavioural of RF_RegisterFile_32_15_21363479 is

component RF_DestReg_Decoder_21363479 is
    port(A: in std_logic_vector (4 downto 0);
          D: out std_logic_vector (31 downto 0) );
end component RF_DestReg_Decoder_21363479;

component RF_TempDestReg_Decoder_21363479 is
    port(A: in std_logic_vector (3 downto 0);
          D: out std_logic_vector (15 downto 0) );
end component RF_TempDestReg_Decoder_21363479;

component RF_Register32Bit_21363479 is
    Port ( A : in std_logic_vector (31 downto 0);
           load, clock : in std_logic;
           D : out std_logic_vector (31 downto 0));
end component RF_Register32Bit_21363479;

component RF_Mux32_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24,
            in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (4 downto 0);
    z: out std_logic_vector (31 downto 0));
end component RF_Mux32_32Bit_21363479;

component RF_Mux16_32Bit_21363479 is
    Port (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15 : in std_logic_vector (31 downto 0);
    s : in std_logic_vector (3 downto 0);
    z: out std_logic_vector (31 downto 0));
end component RF_Mux16_32Bit_21363479;

Signal DecoderOut : std_logic_vector (31 downto 0);
Signal TempDecoderOut : std_logic_vector (15 downto 0);

Signal RegOut00,
        RegOut01,
        RegOut02,
        RegOut03,
        RegOut04, 
        RegOut05, 
        RegOut06, 
        RegOut07, 
        RegOut08, 
        RegOut09, 
        RegOut10, 
        RegOut11, 
        RegOut12,
        RegOut13, 
        RegOut14,
        RegOut15, 
        RegOut16,
        RegOut17, 
        RegOut18, 
        RegOut19, 
        RegOut20, 
        RegOut21, 
        RegOut22, 
        RegOut23, 
        RegOut24, 
        RegOut25, 
        RegOut26,
        RegOut27, 
        RegOut28, 
        RegOut29, 
        RegOut30, 
        RegOut31,
        TempRegOut01,
        TempRegOut02,
        TempRegOut03,
        TempRegOut04,
        TempRegOut05,
        TempRegOut06,
        TempRegOut07,
        TempRegOut08,
        TempRegOut09,
        TempRegOut10,
        TempRegOut11,
        TempRegOut12,
        TempRegOut13,
        TempRegOut14,
        TempRegOut15 : std_logic_vector (31 downto 0);
        
Signal Mux32OutA, Mux32OutB : std_logic_vector (31 downto 0);
Signal LoadSignals : std_logic_vector (46 downto 0);

constant PERIOD : time := 20ns;

begin

DestRegDecoder : RF_DestReg_Decoder_21363479 port map (A => DR, D => DecoderOut);

DestTempRegDecoder : RF_TempDestReg_Decoder_21363479 port map (A => TD, D => TempDecoderOut);

Register00 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(0), clock => Clock, D => RegOut00);
Register01 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(1), clock => Clock, D => RegOut01);
Register02 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(2), clock => Clock, D => RegOut02);
Register03 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(3), clock => Clock, D => RegOut03);
Register04 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(4), clock => Clock, D => RegOut04);
Register05 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(5), clock => Clock, D => RegOut05);
Register06 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(6), clock => Clock, D => RegOut06);
Register07 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(7), clock => Clock, D => RegOut07);
Register08 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(8), clock => Clock, D => RegOut08);
Register09 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(9), clock => Clock, D => RegOut09);
Register10 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(10), clock => Clock, D => RegOut10);
Register11 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(11), clock => Clock, D => RegOut11);
Register12 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(12), clock => Clock, D => RegOut12);
Register13 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(13), clock => Clock, D => RegOut13);
Register14 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(14), clock => Clock, D => RegOut14);
Register15 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(15), clock => Clock, D => RegOut15);
Register16 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(16), clock => Clock, D => RegOut16);
Register17 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(17), clock => Clock, D => RegOut17);
Register18 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(18), clock => Clock, D => RegOut18);
Register19 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(19), clock => Clock, D => RegOut19);
Register20 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(20), clock => Clock, D => RegOut20);
Register21 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(21), clock => Clock, D => RegOut21);
Register22 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(22), clock => Clock, D => RegOut22);
Register23 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(23), clock => Clock, D => RegOut23);
Register24 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(24), clock => Clock, D => RegOut24);
Register25 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(25), clock => Clock, D => RegOut25);
Register26 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(26), clock => Clock, D => RegOut26);
Register27 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(27), clock => Clock, D => RegOut27);
Register28 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(28), clock => Clock, D => RegOut28);
Register29 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(29), clock => Clock, D => RegOut29);
Register30 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(30), clock => Clock, D => RegOut30);
Register31 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(31), clock => Clock, D => RegOut31);

TempReg01 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(32), clock => Clock, D => TempRegOut01);
TempReg02 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(33), clock => Clock, D => TempRegOut02);
TempReg03 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(34), clock => Clock, D => TempRegOut03);
TempReg04 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(35), clock => Clock, D => TempRegOut04);
TempReg05 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(36), clock => Clock, D => TempRegOut05);
TempReg06 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(37), clock => Clock, D => TempRegOut06);
TempReg07 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(38), clock => Clock, D => TempRegOut07);
TempReg08 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(39), clock => Clock, D => TempRegOut08);
TempReg09 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(40), clock => Clock, D => TempRegOut09);
TempReg10 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(41), clock => Clock, D => TempRegOut10);
TempReg11 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(42), clock => Clock, D => TempRegOut11);
TempReg12 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(43), clock => Clock, D => TempRegOut12);
TempReg13 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(44), clock => Clock, D => TempRegOut13);
TempReg14 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(45), clock => Clock, D => TempRegOut14);
TempReg15 : RF_Register32Bit_21363479 port map (A => D, load => LoadSignals(46), clock => Clock, D => TempRegOut15);

Mux32_A : RF_Mux32_32Bit_21363479 port map (in0 => RegOut00,
                                            in1 => RegOut01,
                                            in2 => RegOut02,
                                            in3 => RegOut03,
                                            in4 => RegOut04,
                                            in5 => RegOut05,
                                            in6 => RegOut06,
                                            in7 => RegOut07,
                                            in8 => RegOut08,
                                            in9 => RegOut09,
                                            in10 => RegOut10,
                                            in11 => RegOut11,
                                            in12 => RegOut12,
                                            in13 => RegOut13,
                                            in14 => RegOut14,
                                            in15 => RegOut15,
                                            in16 => RegOut16,
                                            in17 => RegOut17,
                                            in18 => RegOut18,
                                            in19 => RegOut19,
                                            in20 => RegOut20,
                                            in21 => RegOut21,
                                            in22 => RegOut22,
                                            in23 => RegOut23,
                                            in24 => RegOut24,
                                            in25 => RegOut25,
                                            in26 => RegOut26,
                                            in27 => RegOut27,
                                            in28 => RegOut28,
                                            in29 => RegOut29,
                                            in30 => RegOut30,
                                            in31 => RegOut31,
                                            s => SA,
                                            z => Mux32OutA);
                                            
Mux32_B : RF_Mux32_32Bit_21363479 port map (in0 => RegOut00,
                                            in1 => RegOut01,
                                            in2 => RegOut02,
                                            in3 => RegOut03,
                                            in4 => RegOut04,
                                            in5 => RegOut05,
                                            in6 => RegOut06,
                                            in7 => RegOut07,
                                            in8 => RegOut08,
                                            in9 => RegOut09,
                                            in10 => RegOut10,
                                            in11 => RegOut11,
                                            in12 => RegOut12,
                                            in13 => RegOut13,
                                            in14 => RegOut14,
                                            in15 => RegOut15,
                                            in16 => RegOut16,
                                            in17 => RegOut17,
                                            in18 => RegOut18,
                                            in19 => RegOut19,
                                            in20 => RegOut20,
                                            in21 => RegOut21,
                                            in22 => RegOut22,
                                            in23 => RegOut23,
                                            in24 => RegOut24,
                                            in25 => RegOut25,
                                            in26 => RegOut26,
                                            in27 => RegOut27,
                                            in28 => RegOut28,
                                            in29 => RegOut29,
                                            in30 => RegOut30,
                                            in31 => RegOut31,
                                            s => SB,
                                            z => Mux32OutB);
                                            
Mux16_A : RF_Mux16_32Bit_21363479 port map (in0 => Mux32OutA,
                                            in1 => TempRegOut01,
                                            in2 => TempRegOut02,
                                            in3 => TempRegOut03,
                                            in4 => TempRegOut04,
                                            in5 => TempRegOut05,
                                            in6 => TempRegOut06,
                                            in7 => TempRegOut07,
                                            in8 => TempRegOut08,
                                            in9 => TempRegOut09,
                                            in10 => TempRegOut10,
                                            in11 => TempRegOut11,
                                            in12 => TempRegOut12,
                                            in13 => TempRegOut13,
                                            in14 => TempRegOut14,
                                            in15 => TempRegOut15,
                                            s => TA,
                                            z => A);
                                            
Mux16_B : RF_Mux16_32Bit_21363479 port map (in0 => Mux32OutB,
                                            in1 => TempRegOut01,
                                            in2 => TempRegOut02,
                                            in3 => TempRegOut03,
                                            in4 => TempRegOut04,
                                            in5 => TempRegOut05,
                                            in6 => TempRegOut06,
                                            in7 => TempRegOut07,
                                            in8 => TempRegOut08,
                                            in9 => TempRegOut09,
                                            in10 => TempRegOut10,
                                            in11 => TempRegOut11,
                                            in12 => TempRegOut12,
                                            in13 => TempRegOut13,
                                            in14 => TempRegOut14,
                                            in15 => TempRegOut15,
                                            s => TB,
                                            z => B);

  LoadSignals(0) <= DecoderOut(0) AND RW AND TempDecoderOut(0);
  LoadSignals(1) <= DecoderOut(1) AND RW AND TempDecoderOut(0);
  LoadSignals(2) <= DecoderOut(2) AND RW AND TempDecoderOut(0);
  LoadSignals(3) <= DecoderOut(3) AND RW AND TempDecoderOut(0);
  LoadSignals(4) <= DecoderOut(4) AND RW AND TempDecoderOut(0);
  LoadSignals(5) <= DecoderOut(5) AND RW AND TempDecoderOut(0);
  LoadSignals(6) <= DecoderOut(6) AND RW AND TempDecoderOut(0);
  LoadSignals(7) <= DecoderOut(7) AND RW AND TempDecoderOut(0);
  LoadSignals(8) <= DecoderOut(8) AND RW AND TempDecoderOut(0);
  LoadSignals(9) <= DecoderOut(9) AND RW AND TempDecoderOut(0);
  LoadSignals(10) <= DecoderOut(10) AND RW AND TempDecoderOut(0);
  LoadSignals(11) <= DecoderOut(11) AND RW AND TempDecoderOut(0);
  LoadSignals(12) <= DecoderOut(12) AND RW AND TempDecoderOut(0);
  LoadSignals(13) <= DecoderOut(13) AND RW AND TempDecoderOut(0);
  LoadSignals(14) <= DecoderOut(14) AND RW AND TempDecoderOut(0);
  LoadSignals(15) <= DecoderOut(15) AND RW AND TempDecoderOut(0);
  LoadSignals(16) <= DecoderOut(16) AND RW AND TempDecoderOut(0);
  LoadSignals(17) <= DecoderOut(17) AND RW AND TempDecoderOut(0);
  LoadSignals(18) <= DecoderOut(18) AND RW AND TempDecoderOut(0);
  LoadSignals(19) <= DecoderOut(19) AND RW AND TempDecoderOut(0);
  LoadSignals(20) <= DecoderOut(20) AND RW AND TempDecoderOut(0);
  LoadSignals(21) <= DecoderOut(21) AND RW AND TempDecoderOut(0);
  LoadSignals(22) <= DecoderOut(22) AND RW AND TempDecoderOut(0);
  LoadSignals(23) <= DecoderOut(23) AND RW AND TempDecoderOut(0);
  LoadSignals(24) <= DecoderOut(24) AND RW AND TempDecoderOut(0);
  LoadSignals(25) <= DecoderOut(25) AND RW AND TempDecoderOut(0);
  LoadSignals(26) <= DecoderOut(26) AND RW AND TempDecoderOut(0);
  LoadSignals(27) <= DecoderOut(27) AND RW AND TempDecoderOut(0);
  LoadSignals(28) <= DecoderOut(28) AND RW AND TempDecoderOut(0);
  LoadSignals(29) <= DecoderOut(29) AND RW AND TempDecoderOut(0);
  LoadSignals(30) <= DecoderOut(30) AND RW AND TempDecoderOut(0);
  LoadSignals(31) <= DecoderOut(31) AND RW AND TempDecoderOut(0);
  
  LoadSignals(32) <= RW AND TempDecoderOut(1);
  LoadSignals(33) <= RW AND TempDecoderOut(2);
  LoadSignals(34) <= RW AND TempDecoderOut(3);
  LoadSignals(35) <= RW AND TempDecoderOut(4);
  LoadSignals(36) <= RW AND TempDecoderOut(5);
  LoadSignals(37) <= RW AND TempDecoderOut(6);
  LoadSignals(38) <= RW AND TempDecoderOut(7);
  LoadSignals(39) <= RW AND TempDecoderOut(8);
  LoadSignals(40) <= RW AND TempDecoderOut(9);
  LoadSignals(41) <= RW AND TempDecoderOut(10);
  LoadSignals(42) <= RW AND TempDecoderOut(11);
  LoadSignals(43) <= RW AND TempDecoderOut(12);
  LoadSignals(44) <= RW AND TempDecoderOut(13);
  LoadSignals(45) <= RW AND TempDecoderOut(14);
  LoadSignals(46) <= RW AND TempDecoderOut(15);

end behavioural;
