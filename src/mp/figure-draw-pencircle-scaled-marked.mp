beginfig(0)

path pth;
pen pn;
pth=fullcircle slanted .25 scaled 2cm;
pn=pencircle scaled 6bp;
draw pth withpen pn;
for t:=0 step .25 until length(pth):
	draw makepath(pn) shifted point t of pth withcolor black;
endfor

endfig
