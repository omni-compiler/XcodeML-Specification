.PHONY: all clean
TEXS=ack.tex DefsDecls.tex Expression.tex history.tex intro.tex macro.tex main.tex Statement.tex SymbolList.tex TypeTable.tex XcodeProgram.tex XcalableMP.tex Others.tex Codes.tex

all: main.pdf

main.pdf: main.dvi
	dvipdfmx main

main.dvi: $(TEXS)
	platex main
	rm main.dvi # repeat to update references
	platex main # repeat to update references

clean:
	rm -f main.pdf main.dvi  main.lof  main.lot  main.toc main.aux main.idx main.log missfont.log

