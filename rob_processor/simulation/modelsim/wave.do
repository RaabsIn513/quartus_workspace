onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /proc_TestBench/U0/ctrlBlock/getInst
add wave -noupdate /proc_TestBench/U0/ctrlBlock/eALU
add wave -noupdate /proc_TestBench/U0/ctrlBlock/cALU
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wAC
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rAC
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wIR
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rIR
add wave -noupdate /proc_TestBench/U0/ctrlBlock/incPC
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wPC
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rPC
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wMDRbus
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wMDRmem
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rMDR
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wMem
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rMem
add wave -noupdate /proc_TestBench/U0/ctrlBlock/wMAR
add wave -noupdate /proc_TestBench/U0/ctrlBlock/rMAR
add wave -noupdate /proc_TestBench/U0/ctrlBlock/reset
add wave -noupdate /proc_TestBench/U0/ctrlBlock/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
