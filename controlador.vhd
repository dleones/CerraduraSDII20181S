library ieee;
use ieee.std_logic_1164.all;

entity controlador is
port(clock,resetn: in std_logic;
		start,Op3,Op2,Op1,Op0,aceptar,Borrar,Posicionmen6,Posicion1men6,Ok_usuario,d5seg,d3seg,Ok_Dep,Ok_Deb,cont2may1,OR_10,cont8,cont4,cont3: in std_logic;
		Reset,ResetC,Reset1,Enumi,Enumj,Econt8,Econt4,EOp,Enumd,Econt2,S0,S1,OK,Error,Econt3,e5seg,e3seg: out std_logic;
		Estados: out std_logic_vector (5 downto 0));
end controlador;

architecture comportamiento of controlador is 
type estado is (A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,E0,E1,E2,E3,E4,E5,E6,E7,E8,E9);
signal y: estado;
begin
	process (clock, resetn)
	begin
	if resetn ='0' then y <=A1;
	elsif (clock'event and clock='1') then 
		case y is
			when A0 => if cont2may1='1' then y<=E5;  else y<=E9;  end if;
			when A1 => if start='1' then y<=A2;  else y<=A1;  end if;
			when A2 => if start='1' then y<=A2;  else y<=A3;  end if;
			when A3 => y<=A4; 
			when A4 => if cont8='1' then y<=A9;  else y<=A5;  end if;
			when A5 => if OR_10='1' then y<=A6;  else y<=A5;  end if;
			when A6 => if OR_10='1' then y<=A6;  else y<=A7;  end if;
			when A7 => if Borrar='1' then y<=A5; else y<=A8;  end if;
			when A8 => y<=A4;
			when A9 => if Posicion1men6='1' then y<=B1; else y<=B0; end if;
			when B0 => y<= A3; 
			
			when B1 => y<=B2;
			when B2 => if cont4='1'  then y<=B8;  else y<=B3;  end if;
			when B3 => if OR_10='1'  then y<=B4;  else y<=B3;  end if;
			when B4 => if OR_10='1'  then y<=B4;  else y<=B5;  end if;
			when B5 => if Op3='1'    then y<=B7;  else y<=B6;  end if;
			when B6 => if Borrar='1' then y<=B3;  else y<=B7;  end if;
			when B7 => y<=B2;
			when B8 => if Op0='1'   then y<=C8;  else y<=B9;  end if;
			when B9 => if Op3='1'   then y<=A0;  else y<=C0;  end if;
			when C0 => if Ok_usuario='1'   then y<=C1;  else y<=B0;  end if;
			
			when C1 => if OR_10='1' then y<=C2;  else y<=C1;  end if;
			when C2 => if OR_10='1' then y<=C2;  else y<=C3;  end if;
			when C3 => if Op0='1'   then y<=C7;  else y<=C4;  end if;
			when C4 => if Op1='1'   then y<=D5;  else y<=C5;  end if;
			when C5 => if Op2='1'   then y<=E3;  else y<=C6;  end if;
			when C6 => if Op3='1'   then y<=C7;  else y<=C1;  end if;
			when C7 => y<=B1;
			when C8 => if aceptar='1' then y<=C9;  else y<=C8;  end if;
			when C9 => if Ok_Dep='1'  then y<=D0;  else y<=D2;  end if;
			when D0 => y<=D1;
			
			when D1 => if d3seg='1'   then y<=D4;  else y<=D1;  end if;
			when D2 => y<=D3;
			when D3 => if d3seg='1'   then y<=D4;  else y<=D3;  end if;
			when D4 => y<=A3;
			when D5 => y<=D6;
			when D6 => if Cont3='1'   then y<=E1;  else y<=D7;  end if;
			when D7 => if OR_10='1'   then y<=D8;  else y<=D7;  end if;
			when D8 => if OR_10='1'   then y<=D8;  else y<=D9;  end if;
			when D9 => if Borrar='1'  then y<=D7;  else y<=E0; end if;
			when E0 => y<=D6;
			
			when E1 => if aceptar='1' then y<=E2;  else y<=E1;  end if;
			when E2 => if Ok_Deb='1'  then y<=D0;  else y<=D2;  end if;
			when E3 => y<=A4;
			when E4 => if d5seg='1'   then y<=A3;  else y<=E4;  end if;
			when E5 => if Posicionmen6='1' then y<=E6; else y<=E7; end if;
			when E6 => y<=C7;
			when E7 => y<=E8;
			when E8 => if d3seg='1'   then y<=C7;  else y<=E8;  end if;
			when E9 => if Posicionmen6='1' then y<=D0; else y<=D2; end if;
		
			
		end case;
	end if;
end process;

process (y)
begin
	Reset<='0';ResetC<='0';Reset1<='0';Enumi<='0';Enumj<='0';Econt8<='0';Econt4<='0';EOp<='0';Enumd<='0';Econt2<='0';S0<='0';S1<='0';OK<='0';Error<='0';Econt3<='0';e5seg<='0';e3seg<='0';
	case y is
		
			when A1 => Estados<="000000";Reset<='1';ResetC<='1';
			when A2 => Estados<="000001";
			when A3 => Estados<="000010";Reset1<='1';Econt8<='1';
			when A4 => Estados<="000011";
			when A5 => Estados<="000100";
			when A6 => Estados<="000101";Enumi<='1';
			when A7 => Estados<="000110";
			when A8 => Estados<="000111";Econt8<='1';
			when A9 => Estados<="001000";
			when B0 => Estados<="001001";Error<='1';ResetC<='1';
			when A0 => Estados<="001010";
			
			when B1 => Estados<="001011";Reset1<='1';Econt4<='1';
			when B2 => Estados<="001100";S0<='1';S1<='1';
			when B3 => Estados<="001101";S0<='1';S1<='1';
			when B4 => Estados<="001110";S0<='1';S1<='1';Enumj<='1';
			when B5 => Estados<="001111";S0<='1';S1<='1';
			when B6 => Estados<="010000";S0<='1';S1<='1';
			when B7 => Estados<="010001";S0<='1';S1<='1';Econt4<='1';
			when B8 => Estados<="010010";S0<='1';S1<='1';ResetC<='1';Reset<='1';
			when B9 => Estados<="010011";S0<='1';S1<='1';
			when C0 => Estados<="010100";S0<='1';S1<='1';
			
			when C1 => Estados<="010101";EOp<='1';
			when C2 => Estados<="010110";EOp<='1';
			when C3 => Estados<="010111";ResetC<='1';
			when C4 => Estados<="011000";
			when C5 => Estados<="011001";
			when C6 => Estados<="011010";
			when C7 => Estados<="011011";ResetC<='1'; 
			when C8 => Estados<="011100";S0<='1';S1<='1';
			when C9 => Estados<="011101";S0<='1';S1<='1';
			when D0 => Estados<="011110";e3seg<='1';
			
			when D1 => Estados<="011111";OK<='1';
			when D2 => Estados<="100000";e3seg<='1';
			when D3 => Estados<="100001";Error<='1';
			when D4 => Estados<="100010";ResetC<='1';
			when D5 => Estados<="100011";Enumd<='1';
			when D6 => Estados<="100100";S0<='1';
			when D7 => Estados<="100101";S0<='1';
			when D8 => Estados<="100110";S0<='1';Enumd<='1';
			when D9 => Estados<="100111";S0<='1';
			when E0 => Estados<="101000";S0<='1';Econt3<='1';
			
			when E1 => Estados<="101001";S0<='1';
			when E2 => Estados<="101010";S0<='1';
			when E3 => Estados<="101011";e5seg<='1';
			when E4 => Estados<="101100";S1<='1';
			when E5 => Estados<="101101";S0<='1';S1<='1';Econt2<='1';
			when E6 => Estados<="101110";S0<='1';S1<='1';
			when E7 => Estados<="101111";S0<='1';S1<='1';e3seg<='1';
			when E8 => Estados<="110000";S0<='1';S1<='1';Error<='1';
			when E9 => Estados<="110001";S0<='1';S1<='1';
		
		
	end case;
end process;
end comportamiento;
