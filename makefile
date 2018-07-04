CC=xelatex -shell-escape
REPORT=report
PRES1=pres1
PRES2=pres2

# all: $(REPORT).pdf $(PRES1).pdf $(PRES2).pdf mostlyclean

$(REPORT).pdf: $(REPORT).tex report/*.tex bib.bib images/* text/* ../tag_manager/src/*
	$(CC) $(REPORT).tex
	makeglossaries $(REPORT)
	bibtex $(REPORT)
	$(CC) $(REPORT).tex
	$(CC) $(REPORT).tex
	make mostlyclean

$(PRES1).pdf: $(PRES1).tex images/*
	$(CC) $(PRES1).tex
	$(CC) $(PRES1).tex
	make mostlyclean

$(PRES2).pdf: $(PRES2).tex images/*
	$(CC) $(PRES2).tex
	$(CC) $(PRES2).tex
	make mostlyclean

mostlyclean:
	rm -rf _minted-* *.log *.aux *.out *.lof *.lol *.toc *.bbl *.blg
	rm -rf *.nav *.snm *.glg *.glo *.gls *.glsdefs *.ist *.lot

clean:
	rm -f *.pdf
	rm -rf _minted-* *.log *.aux *.out *.lof *.lol *.toc *.bbl *.blg
	rm -rf *.nav *.snm *.glg *.glo *.gls *.glsdefs *.ist *.lot

rebuild: clean all
