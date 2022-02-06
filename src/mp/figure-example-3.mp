beginfig(0)

z1=(-cm, 0);
z2=(2.5cm, 0);
z3=(0, -.5cm);
z4=(0, 4cm);
z5=(1cm, 2cm);
z6=(.5cm, 1cm);

drawarrow z1--z2;
drawarrow z3--z4;

fill fullcircle scaled 1.5cm shifted z5 withcolor blue;
draw fullcircle scaled 2.5cm shifted z6 withcolor green;

%label.bot("$x$", z2);
%label.lft("$y$", z4);

endfig
