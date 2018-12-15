library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY asiganadordinero IS
PORT(    w5, w6 : out std_logic_vector(15 DOWNTO 0);
			w0, w1, w2, w3, w4 : out std_logic_vector(19 DOWNTO 0));
END asiganadordinero;

ARCHITECTURE synth OF asiganadordinero IS
BEGIN

	w0<= "00000011000000000000";
	w1<= "00000101000000000000";
	w2<= "00000000000000100000";
	w3<= "10011000100110011000";
	w4<= "00000000001000000001";
	w5<= "0001000000000001";
	w6<= "0000001000000001";

END synth;