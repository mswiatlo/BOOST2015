export TEXINPUTS := .//:./style//:sections//:${TEXINPUTS}
export BIBINPUTS := .//:./bibs//:${TEXINPUTS}

PAPER = paper

all:
	pdflatex ${PAPER}
	pdflatex ${PAPER}
	bibtex   ${PAPER}
	pdflatex ${PAPER}
	pdflatex ${PAPER}
	# clear
	# du -hs
	# ls -ltrh
	#open -a skim ${THESIS}.pdf
	#sh scripts/pages.sh

clean:
	rm -f *.aux *.log *.pdf *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg  *.bbl \
	 	*.inx *.dvi *.toc *.out *~ ~* spellTmp 
