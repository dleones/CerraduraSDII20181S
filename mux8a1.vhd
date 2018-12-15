library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8a1 is
port (
      w0, w1, w2, w3, W4, W5, W6, W7 : in std_logic_vector(3 downto 0);
     s : in std_logic_vector(2 downto 0);
     f : out std_logic_vector(3 downto 0)
     );
end mux8a1;

architecture Behavioral of mux8a1 is
begin
		with s select
			f <= w0 when "000",
			     w1 when "001",
				  w2 when "010",
				  w3 when "011",
			     w4 when "100",
				  w5 when "101",
				  w6 when "110",
				  w7 when others;
				  
end Behavioral;