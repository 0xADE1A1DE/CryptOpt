#!/usr/bin/env gnuplot
# vim: set ft=gnuplot:

set terminal epslatex size 5.5,3.5
set boxwidth 0.8 absolute

set bmargin 10
unset key


set ylabel "Cycles"
set yrange [0:650]

set format y "%'.0fk"
set ytics 100,150

set xtics rotate by 45 right

# set style line 1 lc rgb "#565656"
# set style line 2 lc rgb "blue"
set style fill solid

# set linetype 1 lc rgb "#565656"
set linetype 1 lc rgb "#BBBBBB"
set linetype 2 lc rgb "blue"
set linetype 3 lc rgb "#353535"

# set key outside;
# set key top ;


