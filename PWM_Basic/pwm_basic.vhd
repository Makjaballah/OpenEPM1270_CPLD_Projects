---PWM 
---File          : pwm_basic.vhd
---Auther        : Mohamed Akram JABALLAH
---Target        : OpenEPM1270 Standard, CPLD Development Board
---Environnement : Quartus Prime Lite Edition 20.1


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;


Entity pwm_basic is 
port (
	rst  :  in  std_logic;
	clk  :  in std_logic; 
	pwm_out: out std_logic 
);
end pwm_basic;



-- The Architecture of Entity Declarations 

Architecture Behavioral OF pwm_basic is 

signal counter : std_logic_vector ( 7 downto 0 ) := (others => '0') ;
Begin

	Process(rst, clk)
	Begin
		
		If( rst = '0' ) then
			counter <= (others => '0');
			
		elsif rising_edge (clk) then
			if ( counter < X"32" ) then 	
			counter <= counter + 1 ;	
			else                  		
			counter <= (others => '0') ;
			End if ;
		End if;
    End process;

pwm_out <= '1' when (counter < X"19") else '0' ;
	
End Behavioral;