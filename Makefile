PDF = slide.pdf
LTSV=$(wildcard ltsv/*.txt)
APACHE=$(wildcard apache/*.txt)

all: $(PDF)

%.pdf: %.md slide.tex ltsv.png apache.png langs.png quiz.png 
	pandoc -H slide.tex -t beamer --highlight-style=kate -f markdown+autolink_bare_uris $< --pdf-engine=xelatex -o $@

%.png: %.gpt %.txt
	gnuplot $<

ltsv.txt: script/mean.sh $(LTSV)
	./script/mean.sh $(LTSV) > $@

apache.txt: script/mean.sh $(APACHE)
	./script/mean.sh $(APACHE) > $@

clean:
	rm -f $(PDF)

.PHONY: all clean
