#PHONY

.PHONY: clean


reports/tesis.pdf: reports/tesis.tex
	cd reports && pdflatex tesis.tex
	cd reports && bibtex tesis
	cd reports && pdflatex tesis.tex
	cd reports && pdflatex tesis.tex

clean:
	rm --force reports/*.pdf
	rm --force reports/*.aux
	rm --force reports/*.idx
	rm --force reports/*.toc
	rm --force reports/*.lof
	rm --force reports/*.bbl
	rm --force reports/*.blg
	rm --force reports/*.xml
	rm --force reports/*.ind
	rm --force reports/*.ilg
	rm --force reports/*.log
	rm --force reports/*.fls
	rm --force reports/*.bfc
