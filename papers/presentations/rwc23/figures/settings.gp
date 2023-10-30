#!/usr/bin/env gnuplot
# vim: set ft=gnuplot:

# missing values are the ones from earlier-finished seed-searching evaluations
set datafile missing "?"

# setting output sizes
# set terminal epslatex size 18cm,5cm color colortext # width for the abstract
# set terminal epslatex size 14cm,4.5cm color colortext # width for the paper
set terminal epslatex size 5.5,2.6 color colortext # width for beamer

# set x
set xlabel "{\\small \\sffamily \\#Modifications}"
set logscale x 10

# set y
set ylabel "{\\small \\sffamily Speedup}"

set yrange [0.7:1.75]
set ytics 0,0.2,2
set format y "%'.1f"

# xrange
set xrange [10:180000]

# remove legend
unset key
