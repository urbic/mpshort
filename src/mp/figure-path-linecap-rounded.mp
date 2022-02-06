beginfig(0)

z1=(0, cm);
z2=(2cm, cm);
z3=(cm, 0);
z4=(3cm, 0);

begingroup
	interim linecap:=rounded;
	draw z1--z2--z3--z4 withpen pencircle scaled pc;
endgroup;
draw z1--z2--z3--z4 withcolor black;
draw z1 withpen hugepen withcolor black;
draw z2 withpen hugepen withcolor black;
draw z3 withpen hugepen withcolor black;
draw z4 withpen hugepen withcolor black;

endfig
