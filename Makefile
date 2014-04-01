effects-paper.pdf: effects-paper.tex effects-paper.bib
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public
	bibtex effects-paper.aux
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public
