all: chain-complexes.pdf

%.pdf: %.tex %.bib
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<
