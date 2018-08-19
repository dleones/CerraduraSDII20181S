library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  
	   
entity CONTADORDOWN4BITS is  
	   port( Clock: in std_logic;  
            Reset: in std_logic;  
            Enable: in std_logic;  
	         Q: Buffer std_logic_vector(3 downto 0));  
end CONTADORDOWN4BITS;  
	   
architecture solve of CONTADORDOWN4BITS is  
--signal temp: std_logic_vector(3 downto 0);  
begin     
process(Clock,Reset)  
   begin  
      if Reset='1' then Q <= "0011";  
         --Q <= temp;  
      elsif(Clock'event and Clock='1') then  
              if Enable='1' then  Q<=Q-1; end if;  

      end if;  
end process;  
end solve;  
