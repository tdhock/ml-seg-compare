HOCKING-ml-seg-compare.pdf: HOCKING-ml-seg-compare.tex refs.bib
	rm -rf *.aux *.bbl
	pdflatex HOCKING-ml-seg-compare
	bibtex HOCKING-ml-seg-compare
	pdflatex HOCKING-ml-seg-compare
	pdflatex HOCKING-ml-seg-compare
HOCKING-ml-seg-compare.tex: HOCKING-ml-seg-compare.Rnw
	echo 'library(knitr);knit("HOCKING-ml-seg-compare.Rnw")'|R --no-save 