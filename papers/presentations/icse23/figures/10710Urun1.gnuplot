#!/usr/bin/env gnuplot
load 'figures/settings.gp'

set output 'figures/10710Urun1.tex'

set xrange [10:100000]
# min: 0.8522
# max: 1.7129
# p434-sq
plot "figures/10710Urun1.dat" matrix using ($1*10):3:2 linecolor 3 with lines, 1 lc 0

