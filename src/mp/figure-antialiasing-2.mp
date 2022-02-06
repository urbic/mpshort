beginfig(0)

z1=origin;
z2=(5cm, 0);
z3=(9/5*cm, 12/5*cm);

numeric k;

for j:=-.2cm step .2cm until 2.7cm:
	for i:=-.2cm step .2cm until 5.3cm:
		k:=0;
		if (3(j+.05cm)<=4(i+.05cm)) and ((i+.05cm)/5+(j+.05cm)/4<=cm) and (j+.05cm>=0):
			k:=k+1;
		fi
		if (3(j+.05cm)<=4(i+.15cm)) and ((i+.15cm)/5+(j+.05cm)/4<=cm) and (j+.05cm>=0):
			k:=k+1;
		fi
		if (3(j+.15cm)<=4(i+.05cm)) and ((i+.05cm)/5+(j+.15cm)/4<=cm) and (j+.15cm>=0):
			k:=k+1;
		fi
		if (3(j+.15cm)<=4(i+.15cm)) and ((i+.15cm)/5+(j+.15cm)/4<=cm) and (j+.15cm>=0):
			k:=k+1;
		fi
		if (3(j+.05cm)<=4(i+.05cm)) and ((i+.05cm)/5+(j+.05cm)/4<=cm) and (j+.05cm>=0):
			fill unitsquare scaled (.2cm) shifted (i, j) withcolor (k/4*orange);
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
