library ieee;  
use ieee.std_logic_1164.all;  
use ieee.std_logic_arith.all;  
use ieee.std_logic_unsigned.all;  
  
--Memoria RAM de 16 palabras de 20 bits  
  
entity RAM16_20BITS is  
        port(addr: in std_logic_vector(3 downto 0);  
	        we, clk: in std_logic;  
	        data_i: in std_logic_vector(19 downto 0);  
	        data_o: out std_logic_vector(19 downto 0));  
end RAM16_20BITS;  
	  
architecture archram of RAM16_20BITS is  
           type ram_table is array(0 to 59) of std_logic_vector(19 downto 0);  
           signal rammemory:ram_table;  
           begin     
                    process(we, clk, addr)  
                    begin  
                            if clk'event and clk='1' then  
                                if we='1' then  
                                    rammemory(conv_integer(addr))<=data_i;  
                                end if;  
                            end if;  
                    end process;  
            data_o<=rammemory(conv_integer(addr));  
end archram;  
