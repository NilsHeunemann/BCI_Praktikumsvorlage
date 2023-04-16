all: build/main.pdf

build/main.pdf: FORCE | build
	TEXINPUTS=build: \
	max_print_line=1048576 \
	latexmk \
	--lualatex \
	--output-directory=build \
	--interaction=nonstopmode \
	--halt-on-error \
	main.tex

preview: FORCE | build
	TEXINPUTS=build: \
	max_print_line=1048576 \
	latexmk \
	--lualatex \
	--output-directory=build \
	--interaction=nonstopmode \
	--halt-on-error \
	--pvc \
	main.tex


example: FORCE | build
	TEXINPUTS=build: \
	max_print_line=1048576 \
	latexmk \
	--lualatex \
	--output-directory=build \
	--interaction=nonstopmode \
	--halt-on-error \
	Beispiel/Beispiel.tex

build:
	mkdir -p build

clean:
	rm -rf build

FORCE:

.PHONY: all clean FORCE preview
