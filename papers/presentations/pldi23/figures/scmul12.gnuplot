#!/usr/bin/env gnuplot

load "figures/scmulsettings.gp"
set title 'Intel $12^{th}$ Generation'
set output 'figures/scmul12.tex'

plot "figures/scmul12.dat" \
       using 1:3:4:xtic(2) with boxes linecolor variable, \
    '' using 1:3:(sprintf("{\\\\tiny %'.0fk}", $3)) with labels offset 0,.5 title ""
