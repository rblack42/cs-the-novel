# Makefile - book building

MAIN	:= main

.PHONY: all
all:
	pdflatex --shell-escape $(MAIN)
	pdflatex --shell-escape $(MAIN)

.PHONY: clean
clean:
	rm -f *.aux *.idx *.ilg *.ind *.lof *.log *.tox
