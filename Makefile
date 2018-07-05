all: main.tex
	xelatex main
.PHONY: clean
clean:
	rm main.aux main.fdb_latexmk main.fls main.lof main.log main.lot main.nlo main.pdf main.toc *.aux
