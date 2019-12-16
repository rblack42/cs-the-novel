# Makefile - book building

MAIN	:= main.tex

.PHONY: all
all:
	pdflatex $(MAIN)
