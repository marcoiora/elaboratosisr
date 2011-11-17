all: elaborato

elaborato:
	pdflatex -shell-escape --jobname="Elaborato SISR Iora-Lorenzi-Piccinelli" Elaborato.tex

clean:
	rm -f *.aux *.idx *.log *.toc *.out *.pdf
