.PHONY: all pdf clean
TEXS=ack.tex Bibliography.tex Common.tex DefsDecls.tex Expression.tex General.tex history.tex intro.tex macro.tex main.tex Miscellaneous.tex Statement.tex SymbolList.tex TypeTable.tex XcodeProgram.tex

all: main.dvi

pdf: main.pdf

main.pdf: main.dvi
	dvipdfmx main

main.dvi: $(TEXS)
	platex main
	rm main.dvi # repeat to update references
	platex main # repeat to update references

clean:
	rm -f main.pdf main.dvi  main.lof  main.lot  main.toc main.aux main.idx main.log

