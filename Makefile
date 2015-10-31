.PHONY: all

all: tess-ffi.pdf

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.pdf *.out *.aux *.log *.toc *.nav *.snm *.synctex.gz *.synctex.gz\(busy\)
