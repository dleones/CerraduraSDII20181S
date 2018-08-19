library IEEE;  
use IEEE.STD_LOGIC_1164.all;  
  
ENTITY CONCATENADOR20BITS IS  
PORT(a      : out std_logic_vector(19 DOWNTO 0);    
     w0, w1, w2, w3, w4 : in std_logic_vector(3 DOWNTO 0));  
END CONCATENADOR20BITS;  
  
ARCHITECTURE synth OF CONCATENADOR20BITS IS  
BEGIN  
    a(19)<= w0(3);  
    a(18)<= w0(2);  
    a(17)<= w0(1);  
    a(16)<= w0(0);  
    a(15)<= w1(3);  
    a(14)<= w1(2);  
    a(13)<= w1(1);  
    a(12)<= w1(0);  
    a(11)<= w2(3);  
    a(10)<= w2(2);  
    a(9)<= w2(1);  
    a(8)<= w2(0);  
    a(7)<= w3(3);  
    a(6)<= w3(2);  
    a(5)<= w3(1);  
    a(4)<= w3(0);  
    a(3)<= w4(3);  
    a(2)<= w4(2);  
    a(1)<= w4(1);  
    a(0)<= w4(0);  
  
END synth;  
