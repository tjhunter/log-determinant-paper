
all: det_sdd.pdf

clean:
	rm -f *.aux *.log *.bbl *.blg det_sdd.pdf

det_sdd.pdf: det_sdd.tex detsdd_1introduction.tex detsdd_2preconditionedlogdet.tex \
detsdd_3laplacian_problem.tex \
detsdd_31tree_preconditioner.tex detsdd_33ultra_preconditioner.tex \
detsdd_34stretch_bounds.tex \
detsdd_8appendixa.tex 2012_sparse_info.bib \
preamble.tex
	pdflatex det_sdd.tex
	bibtex det_sdd
	pdflatex det_sdd.tex
	pdflatex det_sdd.tex
