all: effects-paper.pdf slides.pdf

slides.pdf: slides.tex effects-paper.bib minimal.bbx
	pdflatex slides.tex
	biber slides.bcf
	pdflatex slides.tex
	pdflatex slides.tex

effects-paper.pdf: effects-paper.tex effects-paper.bib
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public
	bibtex effects-paper.aux
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public
	pdflatex effects-paper.tex -output-directory=~/Dropbox/Public

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log
	rm slides.pdf
	rm effects-paper.pdf
