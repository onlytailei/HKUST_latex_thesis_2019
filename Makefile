TARGET=sample
SOURCE=$(TARGET).tex

latex:
	pdflatex $(SOURCE) && bibtex $(TARGET) && pdflatex $(SOURCE) && pdflatex $(SOURCE)

bibtex:
	bibtex $(TARGET)

clean:
	rm -f $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log $(TARGET).out ${TARGET}.pdf ${TARGET}.lot ${TARGET}.lof ${TARGET}.toc ${TARGET}.dvi

distclean:clean
	rm -f $(TARGET).pdf
