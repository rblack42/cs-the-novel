# Makefile - book building

MAIN	:= main

.PHONY: all
all:
	latexmk -pdf -pdflatex="pdflatex -shell-escape"

.PHONY: clean
clean:
	rm -f *.aux *.idx *.ilg *.ind *.lof *.log *.tox
