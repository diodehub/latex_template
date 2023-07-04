TEXFILE = main

.PHONY: all clean

all: $(TEXFILE).pdf

$(TEXFILE).pdf: $(TEXFILE).tex
	pdflatex $(TEXFILE).tex
	bibtex $(TEXFILE)
	pdflatex $(TEXFILE).tex
	pdflatex $(TEXFILE).tex

clean:
	rm -f $(TEXFILE).pdf
	rm -f $(TEXFILE).aux $(TEXFILE).bbl $(TEXFILE).blg $(TEXFILE).log $(TEXFILE).out $(TEXFILE).synctex.gz $(TEXFILE).toc $(TEXFILE).lof $(TEXFILE).lot
