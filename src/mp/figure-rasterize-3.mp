beginfig(0)

z1=origin;
z2=(5cm, 0);
z3=(9/5*cm, 12/5*cm);

fill z1--z2--z3--cycle;

for j:=-.2cm step .2cm until 2.7cm:
	draw (-.2cm, j)--(5.2cm, j) withpen tinypen withcolor .25orange;
endfor
for i:=-.2cm step .2cm until 5.3cm:
	draw (i, -.2cm)--(i, 2.6cm) withpen tinypen withcolor .25orange;
endfor

endfig
