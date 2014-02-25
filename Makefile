
all: siam.pdf

clean:
	rm -f *.aux *.log

siam.pdf: siam.tex siam.bib 2012_sparse_info.bib
	pdflatex siam.tex
	bibtex siam
	pdflatex siam.tex
	pdflatex siam.tex

siam.tex: siam.lyx
	lyx --export pdflatex siam.lyx