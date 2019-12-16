# Makefile - book building

MAIN	:= main

.PHONY: all
all:
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)

.PHONY: clean
clean:
	rm -f *.aux *.idx *.ilg *.ind *.lof *.log *.tox
