beginfig(0)

u:=cm;

draw for d:=0 upto 7: u*dir(45d)-- endfor cycle;

label.rt("$P_0$", u*right);
label.urt("$P_1$", u*dir 45);
label.top("$P_2$", u*up);
label.ulft("$P_3$", u*dir 135);
label.lft("$P_4$", u*left);
label.llft("$P_5$", u*dir 225);

setbounds currentpicture to unitsquare
	scaled 3.5u shifted (1.75u*(-1, -1));

endfig
