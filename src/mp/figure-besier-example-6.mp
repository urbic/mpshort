beginfig(0)

z1=origin;
z3=(0, 1.5cm);
z2=(4cm, .5cm);
z4=(2cm, 0);

draw z1--z2 withpen tinypen withcolor .5orange;
draw z3--z4 withpen tinypen withcolor .5orange;
draw z1..controls z2 and z3..z4 withpen boldpen;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;
markdot.circle(z3) fg=>orange;
markdot.circle(z4) fg=>orange;

label.bot("$z_0$", z1);
label.top("$z_1$", z2);
label.top("$z_2$", z3);
label.bot("$z_3$", z4);

endfig
