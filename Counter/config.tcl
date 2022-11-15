

set ::env(DESIGN_NAME) "counter"

set ::env(VERILOG_FILES) "./designs/counter/src/*.v"
set ::env(FP_PDN_CORE_RING) "1"
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 500 500"
set ::env(PL_TARGET_DENSITY) "0.45"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
