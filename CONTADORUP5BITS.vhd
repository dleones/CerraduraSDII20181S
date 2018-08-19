library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  
	   
entity CONTADORUP5BITS is  
	   port( Clock: in std_logic;  
            Reset: in std_logic;  
            Enable: in std_logic;  
	         Q: Buffer std_logic_vector(4 downto 0));  
end CONTADORUP5BITS;  
	   
architecture solve of CONTADORUP5BITS is  
--signal temp: std_logic_vector(3 downto 0);  
begin     
process(Clock,Reset)  
   begin  
      if Reset='1' then Q <= "00000";  
         --Q <= temp;  
      elsif(Clock'event and Clock='1') then  
              if Enable='1' then  Q<=Q+1; end if;  

      end if;  
end process;  
end solve;  
