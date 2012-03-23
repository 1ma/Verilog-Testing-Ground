quit -sim

echo "Compiling verilog modules..."
make

# Supresses message 3009 about timescale directives
# and message 7 about not finding appropiate ROMs for init
vsim -t ns -suppress 3009



add wave -divider x
add wave -label x   -hex x

add wave -divider y
add wave -label y   -hex y

run 10us
