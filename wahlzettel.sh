
# 18 verschiedene Stimmzettel

for num in $(seq 1 18)
do

# Stimmzettel setzen

    pdflatex "\newcommand{\anumber}{$num}\input{wahlzettel.latex}" 

# jeweils 16 (4*4) davon in eine Datei

    pdfjoin wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf wahlzettel.pdf \
	--outfile seite.pdf 

# 16 Seiten zu einer zusammenfassen
    
    pdfnup --paper a4 --nup 4x4 seite.pdf --outfile wahlzettel/$num.pdf 

done