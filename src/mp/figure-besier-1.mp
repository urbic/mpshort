beginfig(0)

z1=origin;
z2=(2cm, 1.5cm);

draw z1--z2 withpen boldpen;

markdot.circle(z1) fg=>orange;
markdot.circle(z2) fg=>orange;

label.llft("$z_0$", z1);
label.urt("$z_1$", z2);

endfig
