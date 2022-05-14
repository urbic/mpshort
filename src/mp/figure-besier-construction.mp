beginfig(0)

z1=origin;
z2=(2cm, 3cm);
z3=(8cm, 5cm);
z4=(10cm, -cm);
z.a=.5[z1, z2];
z.b=.5[z2, z3];
z.c=.5[z3, z4];
z.ab=.5[z.a, z.b];
z.bc=.5[z.b, z.c];
z.abbc=.5[z.ab, z.bc];

draw z1--z2--z3--z4 withpen tinypen withcolor .5orange;
draw z.a--z.b--z.c withpen tinypen withcolor .5orange;
draw z.ab--z.bc withpen tinypen withcolor .5orange;
draw z1..controls z2 and z3..z4 withpen boldpen;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>orange;
markdot.circle(z4) fg=>orange;
markdot.circle(z.a) fg=>orange;
markdot.circle(z.b) fg=>orange;
markdot.circle(z.c) fg=>orange;
markdot.circle(z.ab) fg=>orange;
markdot.circle(z.bc) fg=>orange;
markdot.circle(z.abbc) fg=>red;

label.bot("$z_0$", z1);
label.top("$z_1$", z2);
label.top("$z_2$", z3);
label.bot("$z_3$", z4);
label.ulft("$z_{01}$", z.a);
label.top("$z_{12}$", z.b);
label.urt("$z_{23}$", z.c);
label.top("$z_{0112}$", z.ab);
label.top("$z_{1223}$", z.bc);
label.bot("$z(\slashfrac12)$", z.abbc) withcolor red;

endfig
