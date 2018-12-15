library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY conc32bits IS
PORT(a      : out std_logic_vector(31 DOWNTO 0);  
     w0, w1, w2, w3, w4, w5, w6, w7 : in std_logic_vector(3 DOWNTO 0));
END conc32bits;

ARCHITECTURE synth OF conc32bits IS
BEGIN
	a(31)<= w0(3);
	a(30)<= w0(2);
	a(29)<= w0(1);
	a(28)<= w0(0);
	a(27)<= w1(3);
	a(26)<= w1(2);
	a(25)<= w1(1);
	a(24)<= w1(0);
	a(23)<= w2(3);
	a(22)<= w2(2);
	a(21)<= w2(1);
	a(20)<= w2(0);
	a(19)<= w3(3);
	a(18)<= w3(2);
	a(17)<= w3(1);
	a(16)<= w3(0);
	a(15)<= w4(3);
	a(14)<= w4(2);
	a(13)<= w4(1);
	a(12)<= w4(0);
	a(11)<= w5(3);
	a(10)<= w5(2);
	a(9)<= w5(1);
	a(8)<= w5(0);
	a(7)<= w6(3);
	a(6)<= w6(2);
	a(5)<= w6(1);
	a(4)<= w6(0);
	a(3)<= w7(3);
	a(2)<= w7(2);
	a(1)<= w7(1);
	a(0)<= w7(0);

	
END synth;