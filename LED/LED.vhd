---LED 
---File          : LED.vhd
---Auther        : Mohamed Akram JABALLAH
---Target        : OpenEPM1270 Standard, CPLD Development Board
---Environnement : Quartus Prime Lite Edition 20.1


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;

                 
Entity LED is                                        
     port(
          clk:in std_logic;                       
          led:out std_logic_vector ( 3 downto 0 ));  
                                                    
End LED ;   
                                           
Architecture rtl of LED is            
signal clk1,clk2:std_logic;                                       
begin                                                                 
P1:process (clk)                                              
variable count : integer range 0 to 9999999;
begin                                                               
    if rising_edge (clk) then                            
        if  count<=4999999 then                            
          clk1 <= '0';                                          
          count := count + 1;                          
        elsif (count >= 4999999 and count <= 9999999) then       
          clk1 <='1';                                                                  
          count := count + 1;                               
        else count:=0;                                       
        end if;                                                      
     end if;                                          
End process ; 
       
P2:process(clk1)   
begin
    if rising_edge (clk1) then 
      clk2 <= not clk2;
    end if;                                          
End process ;     

P3: process(clk2)                                              
variable count1 : integer range 0 to 16;  
begin                                                                                                                                
if rising_edge (clk2) then                               
   if (count1 <= 4) then                                         
      if count1 = 4 then                                       
         count1 := 0;                                               
      end if;                                                            
      Case count1 is                                            
      When 0 => led <= "1110";                        
      When 1 => led <= "1101";                       
      When 2 => led <= "1011";                       
      When 3 => led <= "0111";                                        
      When others => led <= "1111";              
      end case ;                                                     
      count1 := count1 + 1;                                   
    end if; 
end if ; 
end process;                              

End rtl ;