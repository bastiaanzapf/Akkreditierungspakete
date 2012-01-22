
for num in $(seq 1 18)
do

    pdflatex "\newcommand{\anumber}{$num}\input{wahlzettel.latex}"

    pdfjoin wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	--outfile seite.pdf
    
    pdfnup --paper a4 --nup 4x4 seite.pdf --outfile stimmzettel/$num.pdf

done