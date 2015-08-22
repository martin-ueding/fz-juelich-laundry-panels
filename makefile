# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

input := $(wildcard Dryer-*.svg) $(wildcard Washing-*.svg)
pdf := $(input:.svg=.pdf)

Laundry_Cheat_Sheet.pdf: Laundry_Cheat_Sheet.tex header.sty $(pdf)
	latexmk -pdf $<

%.pdf: %.svg
	inkscape --export-area-drawing --export-pdf=$@ $<
