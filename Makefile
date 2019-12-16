# Makefile - book building

MAIN	:= main.tex

.PHONY: all
all:
	pdflatex $(MAIN)

.PHONY: clean
clean:
	rm -f *.aux *.idx *.ilg *.ind *.lof *.log *.tox
