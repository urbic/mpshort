beginfig(0)

z1=origin;
z2=(3cm, 1.5cm);
z3=(4cm, -.5cm);

draw z1--z2 withpen tinypen withcolor .5orange;
draw z2--z3 withpen tinypen withcolor .5orange;
draw z1..controls z2 and z2..z3 withpen boldpen;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>orange;

label.llft("$z_0$", z1);
label.urt("$z_1$", z2);
label.lrt("$z_2$", z3);

endfig
