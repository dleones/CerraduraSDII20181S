library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY asiganadordinero5a1 IS
PORT(   
			dn50, dn51, dn52, dn53, dn54 : out std_logic_vector(3 DOWNTO 0);
		   dn40, dn41, dn42, dn43, dn44 : out std_logic_vector(3 DOWNTO 0);
			dn30, dn31, dn32, dn33, dn34 : out std_logic_vector(3 DOWNTO 0);
		   dn20, dn21, dn22, dn23, dn24 : out std_logic_vector(3 DOWNTO 0);	
			dn10, dn11, dn12, dn13, dn14 : out std_logic_vector(3 DOWNTO 0));
END asiganadordinero5a1;

ARCHITECTURE synth OF asiganadordinero5a1 IS
BEGIN

	dn50<= "0000";
	dn51<= "0000";
	dn52<= "0000";
	dn53<= "1001";
	dn54<= "0000";
	
	dn40<= "0011";
	dn41<= "0101";
	dn42<= "0000";
	dn43<= "1000";
	dn44<= "0000";
	
	dn30<= "0000";
	dn31<= "0000";
	dn32<= "0000";
	dn33<= "1001";
	dn34<= "0010";
	
	dn20<= "0000";
	dn21<= "0000";
	dn22<= "0010";
	dn23<= "1001";
	dn24<= "0000";
	
	dn10<= "0000";
	dn11<= "0000";
	dn12<= "0000";
	dn13<= "1001";
	dn14<= "0001";


END synth;