all: chain-complexes.pdf

%.tikz: %.sk
	sketch $< -o $@

%.pdf: %.tex %.bib figures/tetrahedra.tikz
	pdflatex $<
	bibtex $*
	pdflatex $<
	pdflatex $<
