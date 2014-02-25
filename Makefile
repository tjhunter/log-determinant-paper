
all: det_sdd.pdf

clean:
	rm -f *.aux *.log *.bbl *.blg det_sdd.pdf

det_sdd.pdf: det_sdd.tex 2012_sparse_info.bib
	pdflatex det_sdd.tex
	bibtex det_sdd
	pdflatex det_sdd.tex
	pdflatex det_sdd.tex
