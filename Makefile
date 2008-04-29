clean:
	rm -f *.sty *.log *.aux *.dvi *.glo *.idx *.eps *.ps *.pdf *.gnuplot example-pdf-gnuplottex*

doc:	sty
	pdflatex gnuplottex.dtx

sty:
	latex gnuplottex.ins

tar:	doc
	cd ..; tar czf gnuplottex/gnuplottex.tar.gz gnuplottex/gnuplottex.ins gnuplottex/gnuplottex.dtx \
	gnuplottex/gnuplottex.pdf gnuplottex/README gnuplottex/gpl.txt gnuplottex/example-pdf.tex
