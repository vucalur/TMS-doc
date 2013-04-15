all :
	pdflatex tms_doc.tex; pdflatex tms_doc.tex

deployPdf : all
	sshfs krzystek@student.agh.edu.pl:. ~/stud
	cp tms_doc.pdf ~stud/public_html
	
clean :
	git clean -f -x

.PHONY : all clean deployPdf
