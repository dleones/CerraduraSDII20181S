library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY asiganadorclave IS
PORT(   w0, w1, w2, w3, w4 : out std_logic_vector(15 DOWNTO 0));
END asiganadorclave;

ARCHITECTURE synth OF asiganadorclave IS
BEGIN

	w0<= "0000000100100011";
	w1<= "0011001000010000";
	w2<= "0101011001111000";
	w3<= "0011001001000010";
	w4<= "0101001100100001";


END synth;