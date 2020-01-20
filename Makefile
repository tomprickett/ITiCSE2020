targets = retentionpaper.pdf

all: $(targets)

pdflatex = pdflatex -interaction=errorstopmode -halt-on-error

%.pdf:  %.tex
	$(pdflatex) $<
	bibtex $*
	$(pdflatex) $<
	$(pdflatex) $<

.PHONY: clean
clean:
	rm -f $(targets) *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.blg *.synctex.gz
