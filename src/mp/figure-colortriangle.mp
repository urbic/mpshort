beginfig(0)
u:=cm;

z1=origin;
z2=(5u, 0);
z3=.5[z1, z2]+(sqrt 3)/2*((z2-z1) zscaled up);
numeric k;
k=32;

%draw z1--z2--z3--cycle;

for i:=0 upto k-1:
	for j:=0 upto k-i-1:
		filldraw (z1--z2--z3--cycle) scaled (1/k) shifted (i/k*(z2-z1)+j/k*(z3-z1))
			withcolor (j/k)[(i/k)[red, green], blue];
		if j<k-i-1:
			filldraw (z1--z2--z3--cycle) scaled (-1/k) shifted ((i+1)/k*(z2-z1)+(j+1)/k*(z3-z1))
				withcolor ((j+.5)/k)[((i+.5)/k)[red, green], blue];
		fi
	endfor
endfor

label.llft("\large\textbf R", z1) withcolor red;
label.lrt("\large\textbf G", z2) withcolor green;
label.top("\large\textbf B", z3) withcolor blue;

endfig
