beginfig(0)

z1=origin;
z2=(3cm, 1.5cm);
z3=(2cm, -cm);
z4=altbase(z3, z1, z2);

draw z1--z2;
draw z3--z4 withpen thinpen dashed evenly scaled .5;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>orange;
markdot.circle(z4) fg=>orange;

% TODO markangle.rt(z3, z4, z2, 1) fg=>orange, extra=>3;

label.top("$z_1$", z1);
label.top("$z_2$", z2);
label.bot("$z_3$", z3);
label.top("$z$", z4);

endfig
