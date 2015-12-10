#!/bin/csh

#FILES=$(ls gnu[1-2].txt)
#set num_plots=$1; # NUM PROCESSORS
#set bm_file=$2; # OVERLAP IN THE SAME PLOT
#set x_range=$3;
#set y_range=$4;
#echo $num_plots
#setenv FILES  my_stats___PROC__.txt
#echo $FILES
#sort -k1 my_stats___PROC__.txt >&! temp
#mv -f temp my_stats___PROC__.txt

#gnuplot -persist <<PLOT
gnuplot -persist <<PLOT

#set size 1.0, 0.6
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14
set output "input.pdf"

set title "INPUT SIGNAL"
set xlabel "SAMPLE"
set ylabel "AMPLITUDE"
set xr [0:600]
set yr [-24000:20000]
plot 'input_wave' using 1:2 title 'input' with lines

set title "OUTPUT SIGNAL"
set xlabel "SAMPLE"
set ylabel "AMPLITUDE"
set xr [0:600]
set yr [-24000:20000]
plot 'output_wave' using 1:2 title 'output' with lines


quit
PLOT
#set title "uIPC vs Mem\_ Latency Processor __PROC__"
#set xlabel "Mem\_ Latency"
#set ylabel "IPC"
#set xr [0:600]
#set yr [0.1:3.1]
#__PLOT_COMMAND_UIPC__
#set yr [1.9:2.6]
#plot  '$FILES' using 1:3 title 'uIPC' with linespoints
#setenv FILES  my_stats_2.txt
#
#gnuplot -persist <<PLOT
#
#set size 1.0, 0.6
#set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14
#set output "my-plot_tests_2.pdf"
#
#set title "IPC vs Mem\_ Latency Processor 1"
#set xlabel "Mem\_ Latency"
#set ylabel "IPC"
#set xr [0:600]
#set yr [0.4:1.1]
#plot  "$FILES" using 1:2 title 'IPC' with linespoints
#set yr [1.9:2.6]
#plot  "$FILES" using 1:3 title 'uIPC' with linespoints
#
#quit
