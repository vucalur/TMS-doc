all :
	pdflatex tms_doc.tex; pdflatex tms_doc.tex

clean :
	git clean -f -x

.PHONY : all clean
