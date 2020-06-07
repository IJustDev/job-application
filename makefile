TEX = pandoc
FLAGS = --pdf-engine=xelatex

all: output/application.tar

output/cv.pdf : src/cv.tex data.yml
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

output/letter.pdf : src/letter.tex data.yml
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

output/application.tar: output/cv.pdf output/letter.pdf
	tar -zcvf output/application.tar.gz $< $^

.PHONY: clean
clean:
	rm -r output/
	rm *.log *.aux *.pdf *.out
