LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY dec1a4 IS
	PORT(clock,reset,enable,or10: IN STD_LOGIC;
		 Ent : IN STD_LOGIC_VECTOR(3 downto 0);
		 sel    : IN std_logic_vector(3 DOWNTO 0);
		 w0, w1, w2, w3 : OUT std_logic_vector(3 DOWNTO 0));
END dec1a4;

ARCHITECTURE sol OF dec1a4 IS

BEGIN
	PROCESS(clock,reset)
	BEGIN
		if reset='0' then w0<="0000";w1<="0000";w2<="0000";w3<="0000";
		elsif (clock'event and clock='1') then
			if(enable='1' AND or10='1') then
				 case Sel is 
						WHEN "0000" => w0 <= Ent;
						WHEN "0001" => w1 <= Ent;  
						WHEN "0010" => w2 <= Ent;   
						WHEN OTHERS => w3 <= Ent;   
				 end case;
			end if;
		end if;
	end process;
END sol;