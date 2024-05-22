---HEX-to-seven-segment_Display
---File          : Display.vhd
---Auther        : Mohamed Akram JABALLAH
---Target        : OpenEPM1270 Standard, CPLD Development Board
---Environnement : Quartus Prime Lite Edition 20.1

Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;


Entity Display is
 port(
		
		rst           :     in std_logic; 
		clk           :		in std_logic;	 
		led_Out       :		out std_logic_vector(7 downto 0); 
		Digit_Select  :     out std_logic_vector(3 downto 0)	
	);
End Display;


Architecture rtl of Display is 
	signal led:	std_logic_vector(3 downto 0);	
	signal Period1uS, Period1mS, Period1S: std_logic;
Begin
	
	
	process( rst, clk, Period1uS, Period1mS )
		variable Count  : std_logic_vector(5 downto 0);
		variable Count1 : std_logic_vector(9 downto 0);
		variable Count2 : std_logic_vector(9 downto 0);
	Begin
		------------------------------------
		--Period: 1uS 
		if( rst = '0' ) THEN 
			Count := "000000";
		elsif rising_edge (clk) then 
			if( Count > "110000" ) then 	
			Count := "000000";
			else                  		
			Count := Count + 1;
			end if;
			Period1uS <= Count(5);
		end if ;
		------------------------------------
		--Period: 1mS 
		if rising_edge (Period1uS) then  
			if ( Count1 > "1111100110" ) then	
			Count1 := "0000000000";  
			else                 			
			Count1 := Count1 + 1;
			end if ;
			Period1mS <= Count1(9);

		end if;
		------------------------------------
		--Period: 1S 
		 if rising_edge (Period1mS) then
			if ( Count2 > "1111100110" ) then 
			Count2 := "0000000000";
			else                  			
			Count2 := Count2 + 1;
			end if;
			
			Period1S  <= Count2(9); 
		end if; 
	End process;
	
	-------------------------------------------------
	-- Encoder 
	-------------------------------------------------
	-- HEX-to-seven-segment decoder 
	-- segment encoding 
	--      0 
	--     ---  
	--  5 |   | 1
	--     --- <------6
	--  4 |   | 2
	--     ---  
	--      3
	process( led )   
	Begin
		case led is
			when "0000" => led_Out <= "11000000";    --'0'
			when "0001" => led_Out <= "11111001";    --'1'
			when "0010" => led_Out <= "10100100";    --'2'
			when "0011" => led_Out <= "10110000";    --'3'
			when "0100" => led_Out <= "10011001";    --'4'
			when "0101" => led_Out <= "10010010";    --'5'
			when "0110" => led_Out <= "10000010";    --'6'
			when "0111" => led_Out <= "11111000";    --'7'
			when "1000" => led_Out <= "10000000";    --'8'
			when "1001" => led_Out <= "10010000";    --'9'
			when "1010" => led_Out <= "10001000";    --'A'
			when "1011" => led_Out <= "10000011";    --'b'
			when "1100" => led_Out <= "11000110";    --'C'
			when "1101" => led_Out <= "10100001";    --'d'
			when "1110" => led_Out <= "10000110";    --'E'
			when "1111" => led_Out <= "10001110";    --'F'
			when others => led_Out <= "XXXXXXXX";    --' '
		end case;
	End process;
	

	process( rst, Period1S )   
		variable Glide   : std_logic_vector(3 downto 0);
		variable reflash : integer range 0 to 3;
	Begin
		if( rst = '0' ) then 
			Glide := "0000";
		elsif rising_edge (Period1S) then
			case reflash is
				when 0 => Digit_Select <= "0001";
				when 1 => Digit_Select <= "0010";
				when 2 => Digit_Select <= "0100";
				when 3 => Digit_Select <= "1000";
				when others => Digit_Select <= "XXXX";
			end case;
			reflash := reflash + 1;
			Glide := Glide + 1; 			
			led <= Glide;
		end if;		
	End process;
	
End rtl;