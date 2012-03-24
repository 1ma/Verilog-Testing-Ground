quit -sim

echo "Compiling verilog modules..."
make

# Supresses message 3009 about timescale directives
# and message 7 about not finding appropiate ROMs for init
vsim -t ns -suppress 3009 vtg.vtg_mux_test



add wave -divider inputs
add wave -label x   -hex x
add wave -label y   -hex y
add wave -label sel -hex sel

add wave -divider output
add wave -label z   -hex z

run 1000ns
