# Copyright © 2015 Martin Ueding <dev@martin-ueding.de>

input := $(wildcard Dryer-*.svg) $(wildcard Washing-*.svg)
pdf := $(input:.svg=.pdf)

all: $(pdf)

%.pdf: %.svg
	inkscape --export-area-drawing --export-pdf=$@ $^
