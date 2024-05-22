Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;


Entity test_pwm_basic is 
end test_pwm_basic;



-- The Architecture of Entity Declarations 

Architecture Behavioral OF test_pwm_basic is 

signal t_rst  :   std_logic;
signal t_clk  :   std_logic; 
signal t_pwm_out: std_logic;

Component pwm_basic is 
port (
	rst  :  in  std_logic;
	clk  :  in std_logic; 
	pwm_out: out std_logic 
);
end component;

Begin

I : pwm_basic port map ( rst => t_rst, clk => t_clk, pwm_out => t_pwm_out);

Process
	Begin
		 t_rst <= '0' ;	
		wait for 5ns ;                 		
		t_rst <= '1' ;	
		wait ;
End process;

Process
	Begin
		t_clk <= '0' ;	
		wait for 20ns ;                 		
		t_clk <= '1' ;	
		wait for 20ns ;
End process;

End Behavioral;