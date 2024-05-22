transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/akram/Embedded_Projects/OpenEPM1270_CPLD_Projects/PWM_Basic/pwm_basic.vhd}

vcom -93 -work work {/home/akram/Embedded_Projects/OpenEPM1270_CPLD_Projects/PWM_Basic/test_pwm_basic.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxii -L rtl_work -L work -voptargs="+acc"  test_pwm_basic

add wave *
view structure
view signals
run 3000 ns
