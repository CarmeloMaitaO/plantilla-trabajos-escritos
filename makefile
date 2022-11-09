src=$(shell pwd)
target=$(src)/target

$(target)/documento.pdf:
	latexmk -pdflua -f -outdir=$(target) documento.tex
limpiar:
	rm -f $(target)/*
.PHONY: limpiar
