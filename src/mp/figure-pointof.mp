beginfig(0)

path c;
c=fullcircle scaled 4cm;

draw c withpen boldpen;

for i:=0 step .5 until length c:
	markdot.circle(point i of c) fg=>orange;
endfor

endfig
