beginfig(0)

z1=origin;
z2=(2cm, 5cm);
z3=(2.5cm, cm);
z4=(.5cm, 4cm);
z5=intersection(z1, z2)(z3, z4);

draw z1--z2;
draw z3--z4;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>orange;
markdot.circle(z4) fg=>orange;
markdot.circle(z5) fg=>orange;

label.bot("$z_1$", z1);
label.bot("$z_3$", z3);
label.top("$z_2$", z2);
label.top("$z_4$", z4);
label.rt("$z$", z5+.1cm*right);

endfig
