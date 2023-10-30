#!/usr/bin/env gnuplot

load "figures/scmulsettings.gp"
set title "Geometric Mean (10 $\\mu$-Architectures)"
set output 'figures/scmul.tex'

plot "figures/scmul.dat" \
       using 1:3:4:xtic(2) with boxes linecolor variable, \
    '' using 1:3:(sprintf("{\\\\tiny %'.0fk}", $3)) with labels offset 0,.5 title ""

