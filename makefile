
all:
	rm paper.bbl
	rm paper.aux
	rm paper.blg
	rm pdfa.xmpi
	rm paper.abs
	rm paper.out
	rm paper.log
	rm paper.xmpdata # < important to enable \newcommand in title
	pdflatex paper.tex
	bibtex paper
	rm paper.xmpdata
	pdflatex paper.tex
	rm paper.xmpdata
	pdflatex paper.tex
