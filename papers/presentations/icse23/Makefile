# Makefile forked from Mike Wilcox's resume project Makefile [1]
#
# [1] https://github.com/mjw56/mike-wilcox-latex-resume/blob/master/Makefile

.SUFFIXES: .tex .pdf .ppt .pptx
.PHONY : default clean pdf watch $(REPORT).pdf $(REPORT).ppt $(REPORT).pptx


REPORT ?= presentation
SHOW = $(REPORT)
DATE = $(shell date +%Y%m%d)
GnuPlot	   = gnuplot
Eps2Pdf	   = epspdf
Gnuplot_Sources = $(wildcard figures/*.gnuplot)
Figures = $(Gnuplot_Sources:.gnuplot=.pdf)

.SECONDARY: $(Gnuplot_Sources:.gnuplot=.eps) $(Figures)

.PHONY: FORCE

# ICSE wanted to get the presentation in a ppt format. 
# I'm using soffice to convert the pdf to a ppt. This works okay-ish :D

FORCE: pdf ppt pptx

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
ppt: $(Figures) Makefile $(REPORT:%=%.ppt)
pptx: $(Figures) Makefile $(REPORT:%=%.pptx)


.tex.pdf:
	pdflatex --shell-escape $*

p: $(REPORT).pdf
	pdfpc -d 20 -g ./$(REPORT).pdf  -r wipe:.3

.pdf.ppt:
	soffice --infilter=impress_pdf_import --convert-to ppt $(REPORT).pdf

.pdf.pptx:
	soffice --infilter=impress_pdf_import --convert-to pptx $(REPORT).pdf

# .tex.pptx:
# pandoc $*.tex --reference-doc=/tmp/demo.pptx --pdf-engine=lualatex -o $(REPORT).pptx

clean:
	rm -rf $(REPORT:%=%.aux) $(REPORT:%=%.bbl) $(REPORT:%=%.blg)
	rm -rf $(REPORT:%=%.log) $(REPORT:%=%.toc) $(REPORT:%=%.dvi)
	rm -rf $(REPORT:%=%.ind) $(REPORT:%=%.ilg) $(REPORT:%=%.nls)
	rm -rf $(REPORT:%=%.nlo) $(REPORT:%=%.out) $(REPORT:%=%.fls)
	rm -rf $(REPORT:%=%.nav) $(REPORT:%=%.snm) $(REPORT:%=%.pdfpc)
	rm -rf $(REPORT:%=%.sum) $(REPORT:%=%.fdb_latexmk)
	rm -rf figures/*.eps
	rm -rf figures/*.pdf
	rm -rf figures/*.tex
	rm -rf figures/*.aux
	rm -rf ./*.aux
	# rm -rf $(REPORT:%=%.pdf)

