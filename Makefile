TEX     := xelatex
TEXARGS := --halt-on-error --output-directory=build

SOURCES := IntTra.tex

include tex/Makefile.inc

.PHONY: clean
build/IntTra.pdf: $(SOURCES)
	mkdir -p build
	$(TEX) $(TEXARGS) $<

clean:
	@rm -vrf build
