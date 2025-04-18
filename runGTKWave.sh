#!/bin/sh

echo "Compiling the testbench and generating the VCD file..."
iverilog -o lab01_tb lab01_tb.v gen_tick.v
./lab01_tb

echo "Running GTKWave..."
gtkwave lab01.vcd lab01.gtkw