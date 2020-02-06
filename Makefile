#PHONY

.PHONY: clean


reports/tesis.pdf: reports/tesis.tex
	cd reports && pdflatex tesis.tex
	cd reports && bibtex tesis
	cd reports && pdflatex tesis.tex
	cd reports && pdflatex tesis.tex

clean:
	rm reports/*.pdf
	rm reports/*.aux
	rm reports/*.idx
	rm reports/*.toc
	rm reports/*.lof
	rm reports/*.bbl
	rm reports/*.blg
	rm reports/*.xml
	rm reports/*.ind
	rm reports/*.ilg
	rm reports/*.cls
	rm reports/*.log
	rm reports/*.fls
	rm reports/*.bfc
