beginfig(0)

z1=origin;
z2=(5cm, 0);
z3=(9/5*cm, 12/5*cm);

for j:=-.2cm step .2cm until 2.7cm:
	for i:=-.2cm step .2cm until 5.3cm:
		if (3(j+.1cm)<=4(i+.1cm)) and ((i+.1cm)/5+(j+.1cm)/4<=cm) and (j+.1cm>=0):
			fill unitsquare scaled (.2cm) shifted (i, j);
		fi
	endfor
endfor

for j:=-.2cm step .2cm until 2.7cm:
	draw (-.2cm, j)--(5.2cm, j) withpen tinypen withcolor .25orange;
endfor
for i:=-.2cm step .2cm until 5.3cm:
	draw (i, -.2cm)--(i, 2.6cm) withpen tinypen withcolor .25orange;
endfor

endfig
