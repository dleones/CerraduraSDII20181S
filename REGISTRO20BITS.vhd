LIBRARY IEEE;  
USE  IEEE.STD_LOGIC_1164.all;  
USE  IEEE.STD_LOGIC_UNSIGNED.all;  
  
ENTITY REGISTRO20BITS IS  
    PORT(clock,reset,enable: IN STD_LOGIC;  
         Ent : IN STD_LOGIC_VECTOR(19 downto 0);  
         Q : OUT STD_LOGIC_VECTOR (19 downto 0));  
END REGISTRO20BITS;  
	  
ARCHITECTURE sol OF REGISTRO20BITS IS  
  
BEGIN  
    PROCESS(clock,reset)  
    BEGIN  
        if reset='0' then Q<="00000000000000000000";  
        elsif (clock'event and clock='1') then  
           if(enable='1') then Q<=Ent;  
            end if;  
        end if;  
    end process;  
END sol;  
