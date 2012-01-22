pdflatex stimmkarte.latex

pdfjoin stimmkarte.pdf stimmkarte.pdf stimmkarte.pdf stimmkarte.pdf --outfile 4stimmkarten.pdf 

pdfnup --paper a4 --nup 4x1 4stimmkarten.pdf --outfile 4stimmkarten-a4.pdf
