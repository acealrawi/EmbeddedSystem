onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fulladder/A0
add wave -noupdate /fulladder/A1
add wave -noupdate /fulladder/O0
add wave -noupdate /fulladder/B0
add wave -noupdate /fulladder/B1
add wave -noupdate /fulladder/O1
add wave -noupdate /fulladder/Co
add wave -noupdate /fulladder/gnd
add wave -noupdate /fulladder/vcc
add wave -noupdate /fulladder/unknown
add wave -noupdate /fulladder/devoe
add wave -noupdate /fulladder/devclrn
add wave -noupdate /fulladder/devpor
add wave -noupdate /fulladder/ww_devoe
add wave -noupdate /fulladder/ww_devclrn
add wave -noupdate /fulladder/ww_devpor
add wave -noupdate /fulladder/ww_O1
add wave -noupdate /fulladder/ww_B0
add wave -noupdate /fulladder/ww_B1
add wave -noupdate /fulladder/ww_A0
add wave -noupdate /fulladder/ww_A1
add wave -noupdate /fulladder/ww_Co
add wave -noupdate /fulladder/ww_O0
add wave -noupdate /fulladder/\\~QUARTUS_CREATED_GND~I_combout\\
add wave -noupdate /fulladder/\\A0~input_o\\
add wave -noupdate /fulladder/\\B0~input_o\\
add wave -noupdate /fulladder/\\B1~input_o\\
add wave -noupdate /fulladder/\\A1~input_o\\
add wave -noupdate /fulladder/\\inst7~combout\\
add wave -noupdate /fulladder/\\inst8~combout\\
add wave -noupdate /fulladder/\\inst3~combout\\
add wave -noupdate /fulladder/\\ALT_INV_A1~input_o\\
add wave -noupdate /fulladder/\\ALT_INV_A0~input_o\\
add wave -noupdate /fulladder/\\ALT_INV_B1~input_o\\
add wave -noupdate /fulladder/\\ALT_INV_B0~input_o\\
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
