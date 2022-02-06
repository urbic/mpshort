beginfig(0)

z1=origin;
z2=(2cm, 0);
z3=(.5cm, 3cm);
draw z1--z2--z3--cycle;
draw circumcircle(z1, z2, z3) withcolor red;

endfig
