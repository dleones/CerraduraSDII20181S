LIBRARY IEEE;  
USE  IEEE.STD_LOGIC_1164.all;  
USE  IEEE.STD_LOGIC_UNSIGNED.all;  
	  
ENTITY DECO1A5 IS  
    PORT(clock,reset,enable,or10: IN STD_LOGIC;  
	         Ent : IN STD_LOGIC_VECTOR(3 downto 0);  
         sel    : IN std_logic_vector(2 DOWNTO 0);  
	         w0, w1, w2, w3, w4 : OUT std_logic_vector(3 DOWNTO 0));  
END DECO1A5;  
	  
	ARCHITECTURE sol OF DECO1A5 IS  
	  
BEGIN  
PROCESS(clock,reset)  
BEGIN  
      if reset='0' then w0<="0000";w1<="0000";w2<="0000";w3<="0000";w4<="0000";
      elsif (clock'event and clock='1') then  
           if(enable='1' AND or10='1') then  
                case Sel is   
                       WHEN "000" => w0 <= Ent;  
                       WHEN "001" => w1 <= Ent;    
                       WHEN "010" => w2 <= Ent;  
                       WHEN "011" => w3 <= Ent;  
                       WHEN OTHERS => w4 <= Ent;     
                end case;  
           end if;  
       end if;  
    end process;  
END sol;  
