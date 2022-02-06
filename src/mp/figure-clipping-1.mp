beginfig(0)
u:=cm;

for j:=-10 upto 10:
	for i:=-10 upto 10:
		fill fullcircle scaled .1u shifted ((i, j)*.15u) withcolor .5red;
	endfor
endfor

endfig
