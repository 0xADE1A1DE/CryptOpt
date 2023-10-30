# Makefile forked from Mike Wilcox's resume project Makefile [1]
#
# [1] https://github.com/mjw56/mike-wilcox-latex-resume/blob/master/Makefile

.SUFFIXES: .tex .pdf
.PHONY : default clean pdf watch $(REPORT).pdf 


REPORT ?= presentation
SHOW = $(REPORT)
DATE = $(shell date +%Y%m%d)
GnuPlot	   = gnuplot
Eps2Pdf	   = epspdf
Gnuplot_Sources = $(wildcard figures/*.gnuplot)
Figures = $(Gnuplot_Sources:.gnuplot=.pdf) $(wildcard figures/tex/*.tex)

.SECONDARY: $(Gnuplot_Sources:.gnuplot=.eps) $(Figures)

.PHONY: FORCE
FORCE: pdf
%.pdf: %.eps
	@echo $< '->' $@
	${Q} ${Eps2Pdf} $<
%.eps: %.gnuplot %.dat ./figures/settings.gp ./figures/scmulsettings.gp
	@echo $< '->' $@
	${Q} ${GnuPlot} $<

$(REPORT).pdf: $(REPORT).tex $(shell find . -name  '*.tex')

default: pdf

pdf: $(Figures) Makefile $(REPORT:%=%.pdf)
	pdflatex --shell-escape $(REPORT)

.tex.pdf:
	pdflatex --shell-escape $*

p: $(REPORT).pdf
	pdfpc -d 20 -g ./presentation.pdf  -r wipe:.3

clean:
	rm -rf $(REPORT:%=%.aux) $(REPORT:%=%.bbl) $(REPORT:%=%.blg)
	rm -rf $(REPORT:%=%.log) $(REPORT:%=%.toc) $(REPORT:%=%.dvi)
	rm -rf $(REPORT:%=%.ind) $(REPORT:%=%.ilg) $(REPORT:%=%.nls)
	rm -rf $(REPORT:%=%.nlo) $(REPORT:%=%.out) $(REPORT:%=%.fls)
	rm -rf $(REPORT:%=%.snm) $(REPORT:%=%.nav) $(REPORT:%=%.pdfpc)
	rm -rf $(REPORT:%=%.sum) $(REPORT:%=%.fdb_latexmk)
	rm -rf figures/*.eps
	rm -rf figures/*.pdf
	rm -rf figures/*.tex
	rm -rf figures/*.aux
	rm -rf ./*.aux
	# rm -rf $(REPORT:%=%.pdf)
