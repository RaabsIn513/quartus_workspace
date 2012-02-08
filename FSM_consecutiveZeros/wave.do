onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FSM_consecZeros/clock
add wave -noupdate /FSM_consecZeros/reset
add wave -noupdate /FSM_consecZeros/inBit
add wave -noupdate /FSM_consecZeros/outBit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29 ps} 0}
configure wave -namecolwidth 190
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
WaveRestoreZoom {0 ps} {949 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/reset 
wave create -driver freeze -pattern constant -value 010010100011 -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/inBit 
wave create -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { 0 1 0 0 1 0 1 0 0 0 1 1  } -repeat forever -starttime 0ps -endtime 1000ps sim:/FSM_consecZeros/inBit 
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 50ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/clock 
wave modify -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { St0 St1 St0 St0 St1 St0 St1 St0 St0 St0 St1 St1  } -repeat 1 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/inBit 
wave modify -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { St0 St1 St0 St0 St1 St0 St1 St0 St0 St0 St1 St1 0  } -repeat 1 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/inBit 
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/clock 
wave modify -driver freeze -pattern repeater -initialvalue HiZ -period 50ps -sequence { St0 St1 St0 St0 St1 St0 St1 St0 St0 St0 St1 St1 St0  } -repeat forever -starttime 0ps -endtime 1000ps Edit:/FSM_consecZeros/inBit 
WaveCollapseAll -1
wave clipboard restore
