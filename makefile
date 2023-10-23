
all:
	rm -f paper.bbl
	rm -f paper.aux
	rm -f paper.blg
	rm -f pdfa.xmpi
	rm -f paper.abs
	rm -f paper.out
	rm -f paper.log
	rm -f paper.xmpdata # < important to enable \newcommand in title
	pdflatex paper.tex
	bibtex paper
	rm -f paper.xmpdata
	pdflatex paper.tex
	rm -f paper.xmpdata
	pdflatex paper.tex


poster:
	lualatex poster.tex
