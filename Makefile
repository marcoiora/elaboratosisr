all: elaborato

elaborato:
	pdflatex -shell-escape --jobname="Elaborato_SISR" Elaborato.tex

clean:
	rm -f *.aux *.idx *.log *.toc *.out *.pdf
