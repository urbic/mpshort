beginfig(0)
u:=cm;

fill unitsquare scaled 2.5u shifted (-1.25u, 0) withcolor .5green;

picture tmp;
tmp:=nullpicture;
for j:=-10 upto 10:
	for i:=-10 upto 20:
		addto tmp contour
			fullcircle scaled .1u shifted ((i, j)*.15u) withcolor .5red;
	endfor
endfor

clip tmp to fullcircle scaled 3u;
addto currentpicture also tmp;

endfig
