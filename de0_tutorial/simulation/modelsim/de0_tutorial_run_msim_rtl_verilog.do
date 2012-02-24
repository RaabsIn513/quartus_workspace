transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/clocks_0.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/de0_tutorial.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/nios_system.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/switches.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0_test_bench.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0_oci_test_bench.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0_jtag_debug_module_tck.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/cpu_0_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/greenleds.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/jtag_uart_0.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/onchip_memory2_0.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/sdram_0.v}
vlog -vlog01compat -work work +incdir+E:/quartus_workspace/de0_tutorial {E:/quartus_workspace/de0_tutorial/timer_0.v}

