library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY asiganadornumero IS
PORT(    w5: out std_logic_vector(2 DOWNTO 0);
			w0, w1, w2, w3, w4, w6, w7  : out std_logic_vector(3 DOWNTO 0));
END asiganadornumero;

ARCHITECTURE synth OF asiganadornumero IS
BEGIN

	w0<= "0000";
	w1<= "0001";
	w2<= "0010";
	w3<= "0011";
	w4<= "0101";
   w5<= "110";
	w6<= "0100";
	w7<= "1000";

END synth;