TEXSRC=slides
OUTDIR=output

TEXOUT=$(OUTDIR)/$(TEXSRC)

PDFLATEX=pdflatex
PDFVIEW=evince

TEXFLAGS=-interaction=nonstopmode -file-line-error

all: pdf

pdf: $(TEXOUT).pdf

$(TEXOUT).pdf: $(TEXSRC).tex
	@$(PDFLATEX) $(TEXFLAGS) -output-directory=$(OUTDIR) $< | grep '^[^:]\+\.tex:[0-9]\+:' | sed -e 's/LaTeX Error: //'

.PHONY: target view clean

target:
	@echo $(TEXSRC).tex

clean:
	rm -f $(OUTDIR)/{*.dvi,*.pdf,*.aux,*.bbl,*.blg,*.log,*.nav,*.out,*.snm,*.toc}

view: $(TEXOUT).pdf
	$(PDFVIEW) $<
