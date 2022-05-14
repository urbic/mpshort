beginfig(0)

u:=cm;

draw for d:=0 upto 7: u*dir(45d)-- endfor cycle;

setbounds currentpicture to unitsquare
	scaled 3.5u shifted (1.75u*(-1, -1));

endfig
