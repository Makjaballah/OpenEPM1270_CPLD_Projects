---Frequency Divider
---File          : Frequency_4hz.vhd
---Auther        : Mohamed Akram JABALLAH
---Target        : OpenEPM1270 Standard, CPLD Development Board
---Environnement : Quartus Prime Lite Edition 20.1


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;


Entity Frequency_4hz is 
port (
	rst:  in  std_logic;
	clk  :  in std_logic; 
	clock_out :  buffer std_logic 
);
End Frequency_4hz;

Architecture Behavioral of Frequency_4hz is

signal counter_slow: std_logic_vector(27 downto 0):=(others => '0');-- counter for creating slow clock

begin

process(clk)
 begin
   if( rst = '0' ) then
	  counter_slow <= (others => '0');
   elsif rising_edge (clk) then
     counter_slow <= counter_slow + x"1";
   if(counter_slow > x"5F5E10") then 
     counter_slow <= (others => '0');
   End if;
   End if;
  
   if ( counter_slow = x"0") then
	   clock_out <= not clock_out ;
   End if ;

End process;

End Behavioral;
		
