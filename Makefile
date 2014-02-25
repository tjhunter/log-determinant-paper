
all: siam.pdf

clean:
	rm -f *.aux *.log *.bbl *.blg siam.pdf

siam.pdf: siam.tex 2012_sparse_info.bib
	pdflatex siam.tex
	bibtex siam
	pdflatex siam.tex
	pdflatex siam.tex
