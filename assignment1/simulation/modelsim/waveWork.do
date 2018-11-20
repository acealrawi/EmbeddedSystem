onerror {resume}
quietly set dataset_list [list vsim sim]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate sim:/fulladder/A0
add wave -noupdate sim:/fulladder/A1
add wave -noupdate sim:/fulladder/B0
add wave -noupdate sim:/fulladder/B1
add wave -noupdate sim:/fulladder/O0
add wave -noupdate sim:/fulladder/O1
add wave -noupdate sim:/fulladder/Co
add wave -noupdate sim:/fulladder/gnd
add wave -noupdate sim:/fulladder/vcc
add wave -noupdate sim:/fulladder/unknown
add wave -noupdate sim:/fulladder/devoe
add wave -noupdate sim:/fulladder/devclrn
add wave -noupdate sim:/fulladder/devpor
add wave -noupdate sim:/fulladder/ww_devoe
add wave -noupdate sim:/fulladder/ww_devclrn
add wave -noupdate sim:/fulladder/ww_devpor
add wave -noupdate sim:/fulladder/ww_O1
add wave -noupdate sim:/fulladder/ww_B0
add wave -noupdate sim:/fulladder/ww_B1
add wave -noupdate sim:/fulladder/ww_A0
add wave -noupdate sim:/fulladder/ww_A1
add wave -noupdate sim:/fulladder/ww_Co
add wave -noupdate sim:/fulladder/ww_O0
add wave -noupdate sim:/fulladder/\\~QUARTUS_CREATED_GND~I_combout\\
add wave -noupdate sim:/fulladder/\\A0~input_o\\
add wave -noupdate sim:/fulladder/\\B0~input_o\\
add wave -noupdate sim:/fulladder/\\B1~input_o\\
add wave -noupdate sim:/fulladder/\\A1~input_o\\
add wave -noupdate sim:/fulladder/\\inst7~combout\\
add wave -noupdate sim:/fulladder/\\inst8~combout\\
add wave -noupdate sim:/fulladder/\\inst3~combout\\
add wave -noupdate sim:/fulladder/\\ALT_INV_A1~input_o\\
add wave -noupdate sim:/fulladder/\\ALT_INV_A0~input_o\\
add wave -noupdate sim:/fulladder/\\ALT_INV_B1~input_o\\
add wave -noupdate sim:/fulladder/\\ALT_INV_B0~input_o\\
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {0 ps} {386 ps}
