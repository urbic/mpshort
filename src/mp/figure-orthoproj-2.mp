beginfig(0)

z1=origin;
z2=(3cm, 1.5cm);
z3=(2cm, -cm);
z4=altbase(z3, z1, z2);
z5=z3+((z2-z1) rotated 90);

drawarrow z1-- .975[z1, z2];
drawarrow z3-- .975[z3, z5]
	withpen thinpen
	dashed evenly scaled .5
	withcolor red;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>red;
markdot.circle(z4) fg=>red;
markdot.circle(z5) fg=>red;

% TODO markangle.rt(z3, z4, z2, 1) fg=>orange, extra=>3;

label.bot("$z_1$", z1);
label.top("$z_2$", z2);
label.bot("$z_3$", z3);
label.top("$z$", z4);

endfig
