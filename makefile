src=$(shell pwd)
srcDependencias=$(src)/src/dependencias
srcDependenciaFormato=$(srcDependencias)/formatos-institutos-educativos-venezolanos
dependenciaFormato=$(srcDependenciaFormato)/formatos-institutos-venezolanos.sty
target=$(src)/target

$(target)/documento.pdf: formatos-institutos-venezolanos.sty
	latexmk -pdflua -f -outdir=$(target) documento.tex
formatos-institutos-venezolanos.sty:
	git submodule update --init
	git submodule update --remote
	ln -sf $(dependenciaFormato)
limpiar:
	rm -f $(target)/*
.PHONY: limpiar
