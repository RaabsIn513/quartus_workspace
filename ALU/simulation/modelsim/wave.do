onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ALU_TestBench/clock
add wave -noupdate /ALU_TestBench/A
add wave -noupdate /ALU_TestBench/B
add wave -noupdate /ALU_TestBench/control
add wave -noupdate /ALU_TestBench/res
add wave -noupdate /ALU_TestBench/Neg
add wave -noupdate /ALU_TestBench/Zero
add wave -noupdate /ALU_TestBench/AgthanB
add wave -noupdate /ALU_TestBench/overflow
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {46 ps} 0}
configure wave -namecolwidth 169
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
WaveRestoreZoom {0 ps} {976 ps}
