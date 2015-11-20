.PHONY: all

all: tess-ffi.pdf

%.pdf: %.tex
	pdflatex $< < /dev/null
	bibtex $(shell basename $< .tex)
	pdflatex $< < /dev/null
	pdflatex $< < /dev/null
	pdflatex $< < /dev/null

clean:
	rm -f *.pdf *.out *.aux *.log *.toc *.nav *.snm *.synctex.gz *.synctex.gz\(busy\) *.bcf *.run.xml
