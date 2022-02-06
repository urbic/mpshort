beginfig(0)
u:=cm;

fill unitsquare scaled 2.5u shifted (-1.25u, 0) withcolor .5green;

for j:=-10 upto 10:
	for i:=-10 upto 20:
		fill fullcircle scaled .1u shifted ((i, j)*.15u) withcolor .5red;
	endfor
endfor

clip currentpicture to fullcircle scaled 3u;

endfig
