CC=xelatex -shell-escape
REPORT=report
PRES=pres
ANNEXES=annexes

all: $(REPORT).pdf $(ANNEXES).pdf

$(REPORT).pdf: $(REPORT).tex report/*.tex bib.bib images/* text/* ../tag_manager/src/* ../tag_engine/src/*
	$(CC) $(REPORT).tex
	makeglossaries $(REPORT)
	bibtex $(REPORT)
	$(CC) $(REPORT).tex
	$(CC) $(REPORT).tex
	make mostlyclean

$(ANNEXES).pdf: $(ANNEXES).tex ../tag_manager/src/* ../tag_engine/src/*
	$(CC) $(ANNEXES).tex
	$(CC) $(ANNEXES).tex
	make mostlyclean

$(PRES).pdf: $(PRES).tex images/*
	$(CC) $(PRES).tex
	$(CC) $(PRES).tex
	make mostlyclean

mostlyclean:
	rm -rf _minted-* *.log *.aux *.out *.lof *.lol *.toc *.bbl *.blg
	rm -rf *.nav *.snm *.glg *.glo *.gls *.glsdefs *.ist *.lot *.vrb

clean:
	rm -f *.pdf
	rm -rf _minted-* *.log *.aux *.out *.lof *.lol *.toc *.bbl *.blg
	rm -rf *.nav *.snm *.glg *.glo *.gls *.glsdefs *.ist *.lot *.vrb

rebuild: clean all
