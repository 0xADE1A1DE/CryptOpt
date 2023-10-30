#!/usr/bin/env gnuplot
load 'figures/settings.gp'

set output 'figures/10710U.tex'

# min: 0.8522
# max: 1.7129
# p434-sq
plot "figures/10710U.dat" matrix using ($1*10):3:2 linecolor variable with lines, 1 lc 0

# set xrange [10:100000]
