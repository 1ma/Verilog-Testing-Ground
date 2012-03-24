quit -sim

echo "Compiling verilog modules..."
make

# Supresses message 3009 about timescale directives
# and message 7 about not finding appropiate ROMs for init
vsim -t ns -suppress 3009 vtg.vtg_register_test


add wave -label clk     -hex clk
add wave -label rst     -hex rst

add wave -divider inputs
add wave -label we      -hex we
add wave -label prod1   -hex prod1
add wave -label prod2   -hex prod2

add wave -divider outputs
add wave -label recv1   -hex recv1
add wave -label recv2   -hex recv2

run 200ns
