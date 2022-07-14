beginfig(0)

z1=origin;
z2=(4cm, 0);
z3=(cm, 5cm);
draw z1--z2--z3--cycle;
draw incircle(z1, z2, z3) withcolor red;

endfig
