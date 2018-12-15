library ieee;
use ieee.std_logic_1164.all;

entity asiganador8a1 is
port ( s0, s1, s2, s3, s4, s5, s6, s7 : OUT std_logic;
		w0, w1, w2, w3, w4, w5, w6, w7, cont : in std_logic_vector(2 DOWNTO 0));
		
end asiganador8a1;

architecture SOL of asiganador8a1 is
begin
process( w0, w1, w2, w3, w4, w5, w6, w7, cont)
begin
	if w0=cont then  s0<='1';s1<='0'; s2<='0'; s3<='0';s4<='0'; s5<='0'; s6<='0'; s7<='0';
	elsif w1=cont then  s0<='0';s1<='1'; s2<='0'; s3<='0';s4<='0'; s5<='0'; s6<='0'; s7<='0';
	elsif w2=cont then  s0<='0';s1<='0'; s2<='1'; s3<='0';s4<='0'; s5<='0'; s6<='0'; s7<='0';
	elsif w3=cont then  s0<='0';s1<='0'; s2<='0'; s3<='1';s4<='0'; s5<='0'; s6<='0'; s7<='0';
	elsif w4=cont then  s0<='0';s1<='0'; s2<='0'; s3<='0';s4<='1'; s5<='0'; s6<='0'; s7<='0';
	elsif w5=cont then  s0<='0';s1<='0'; s2<='0'; s3<='0';s4<='0'; s5<='1'; s6<='0'; s7<='0';
	elsif w6=cont then  s0<='0';s1<='0'; s2<='0'; s3<='0';s4<='0'; s5<='0'; s6<='1'; s7<='0';
	elsif w7=cont then  s0<='0';s1<='0'; s2<='0'; s3<='0';s4<='0'; s5<='0'; s6<='0'; s7<='1';
	end if;
end process;
end SOL;