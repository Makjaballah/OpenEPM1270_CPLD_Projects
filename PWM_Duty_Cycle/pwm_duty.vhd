
---PWM with variable duty cycle
---File          : pwm_duty.vhd
---Auther        : Mohamed Akram JABALLAH
---Target        : OpenEPM1270 Standard, CPLD Development Board
---Environnement : Quartus Prime Lite Edition 20.1


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
Use ieee.std_logic_arith.all;


entity pwm_duty is
port (
   clk: in std_logic; 
   Duty_increase : in std_logic; -- button to increase duty cycle by 10%
   Duty_decrease : in std_logic; -- button to decrease duty cycle by 10%
   pwm_out: out std_logic -- PWM signal out with frequency of 10MHz
  );
end pwm_duty;




Architecture Behavioral of pwm_duty is

 signal slow_clk_en: std_logic:='0'; -- slow clock enable for debouncing
 signal counter_slow: std_logic_vector(27 downto 0):=(others => '0');-- counter for creating slow clock
 signal tmp1,tmp2,duty_inc: std_logic;
 signal tmp3,tmp4,duty_dec: std_logic;

 Signal counter_pwm: std_logic_vector(5 downto 0):=(others => '0');
 Signal Duty_cycle: std_logic_vector( 5 downto 0) ;
 
Component DFF_Debounce is
Port ( 
 CLK : in std_logic;
 en: in std_logic;
 D : in std_logic;
 Q : out std_logic
 );
End component;
 
 
 begin
 
 process(clk)
 begin
  if(rising_edge(clk)) then
   counter_slow <= counter_slow + x"1";
   if(counter_slow >=x"5F5E10") then 
    counter_slow <= (others => '0');
   end if;
  end if;
 end process;
 slow_clk_en <= '1' when counter_slow = x"5F5E10" else '0';
 
 -- debounce part for duty increasing button
 stage0: DFF_Debounce port map(clk,slow_clk_en , Duty_increase, tmp1);
 stage1: DFF_Debounce port map(clk,slow_clk_en , tmp1, tmp2); 
 duty_inc <=  tmp1 and (not tmp2) and slow_clk_en;
 
 -- debounce part for duty decreasing button
 stage2: DFF_Debounce port map(clk,slow_clk_en , Duty_decrease, tmp3);
 stage3: DFF_Debounce port map(clk,slow_clk_en , tmp3, tmp4); 
 duty_dec <=  tmp3 and (not tmp4) and slow_clk_en;
 
 process(clk)
 begin
  if(rising_edge(clk)) then
   if(duty_inc ='1' and Duty_cycle <= x"32") then
    Duty_cycle <= Duty_cycle + x"1";--increase duty cycle by 10%
   elsif(duty_dec ='1' and Duty_cycle >= X"1") then
    Duty_cycle <= Duty_cycle - X"1";--decrease duty cycle by 10%
   end if;
  end if;
 end process;
 
 -- Create 10MHz PWM signal
 process(clk)
 begin
  if(rising_edge(clk)) then
   counter_pwm <= counter_pwm + X"1";
   if(counter_pwm > X"32") then
    counter_pwm <= (others => '0');
   end if;
  end if;
 end process;
 pwm_out <= '1' when counter_PWM < Duty_cycle else '0';
 
end Behavioral;




