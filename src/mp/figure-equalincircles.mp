input elementi;

beginfig(0)

u:=cm;
z1=origin;
z2=(5u, 0);
z3=(1.5u, 3u);

vardef f(expr t)=
	inradius(z1, t[z1, z2], z3)<inradius(t[z1, z2], z2, z3)
enddef;

z4=(solve f(0, 1))[z1, z2];

draw z1--z2--z3--cycle;
draw z4--z3;

draw incircle(z1, z4, z3);
draw incircle(z4, z2, z3);

%label.bot("$a$", z1);
%label.bot("$b$", z2);
%label.top("$c$", z3);
%label.bot("$d$", z4);

endfig
