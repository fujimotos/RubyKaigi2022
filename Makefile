PDF = slide.pdf

all: $(PDF)

%.pdf: %.md
	pandoc -t beamer --highlight-style=kate -f markdown+autolink_bare_uris $^ --pdf-engine=xelatex -o $@

clean:
	rm $(PDF)

.PHONY: all clean
