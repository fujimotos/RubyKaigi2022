PDF = slide.pdf
LTSV=$(wildcard ltsv/*.txt)
APACHE=$(wildcard apache/*.txt)
IMAGES=ltsv.png apache.png langs.png quiz.png

all: $(PDF)

%.pdf: %.md slide.tex $(IMAGES)
	pandoc -H slide.tex -t beamer --highlight-style=kate -f markdown+autolink_bare_uris $< --pdf-engine=xelatex -o $@

%.png: %.gpi %.txt
	gnuplot $<

ltsv.txt: script/mean.sh $(LTSV)
	./script/mean.sh $(LTSV) > $@

apache.txt: script/mean.sh $(APACHE)
	./script/mean.sh $(APACHE) > $@

clean:
	rm -f $(PDF)

.PHONY: all clean
